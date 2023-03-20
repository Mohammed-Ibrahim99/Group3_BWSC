%--------------------------------------------------------------------------
%---------------------------Constants and Variables------------------------
%--------------------------------------------------------------------------


%-----------------------Drag Force Constants-------------------------------
dragCoefficient = 0.25;
frontalArea = 1.8;
airDensity = 1.225;
angle = 0;
%--------------------------------------------------------------------------

%-----------------------Rolling Resistive Force Constants------------------
mass = 800;
gravitionalAcceleration = 9.81;
tyreRollingResistance = 0.006;
%--------------------------------------------------------------------------

%-----------------------Battery constant Values----------------------------
%Going at speed of 60 km/h will last SoC for 16-20 hours without
%gravitional power loss.
batteryVoltage = 2500;
nominalCurrentHour = 300; %Ah
nominalCurrent = nominalCurrentHour/60; %A
totalBatteryJoule = 35.5*1000*3600;
startingSoC = 100; %value in percentage
batteryPowerJoule = (startingSoC/100)*totalBatteryJoule;
%--------------------------------------------------------------------------

%-------------------Genetic algorithm variables----------------------------
dataSize = 5;
numberOfGenerations = 80;
mutationRate = 0.01;
%--------------------------------------------------------------------------

%--------------------Solar Panel Values------------------------------------
solarPanelArea = 5;
solarPanelEfficiency = 0.22;
solarPerformanceRatio = 0.75;
solarIrradiance = 200*ones(1,dataSize);
%-------------------------------------------------- ------------------------
%%
%--------------------------------------------------------------------------
%-------------------------------Initialisation-----------------------------
%--------------------------------------------------------------------------

%-----------------------Finding Time from random speeds--------------------
%Distance in kilometres
distancekm = 317;
%Distance in metres
DistanceMetres = distancekm*1000;
%Maximum amount of time remaining in hours
maxTime = 5;
%For the remaining amount of time calculate the lowest speed possible
lowestSpeedMS = DistanceMetres/(maxTime*3600);
lowestSpeedkmh = ceil(lowestSpeedMS*3.6);
%Speed in miles per hour
randomSpeedkmh = randi([lowestSpeedkmh 120],1,dataSize);
%converting speed to metres per second (all calculations involving speed
%will be using it in metres per second)
speedinMS = randomSpeedkmh*(10/36);
%--------------------------------------------------------------------------
%%
%--------------------------Power Calculations------------------------------
%calculate Drag Power from speed to find power lost from speed
randomTime = ((DistanceMetres./speedinMS))/3600;

dragForce = calculateDragForce(dragCoefficient, ...
                               speedinMS, ...
                               airDensity, ...
                               frontalArea);

%calculate loss from rolling resistive forces
rollingResistiveForce = calculateRollingResistiveForce(mass, ...
                                               gravitionalAcceleration, ...
                                               tyreRollingResistance, ...
                                               angle);
%calculate power loss from incline
instantenousGravitionalForce = calculateGravitionalPower(mass, ...
                                                 gravitionalAcceleration,...
                                                 speedinMS, ...
                                                 angle);

totalResistiveForce = dragForce + rollingResistiveForce + instantenousGravitionalForce;
totalResistiveEnergy = totalResistiveForce * DistanceMetres;

%Calculate incoming power from solar arrays
solarEnergy = calculateSolarPowerGen(solarPanelEfficiency, ...
                                     solarPanelArea, ...
                                     solarPerformanceRatio,...
                                     solarIrradiance, ...
                                     randomTime)


%calculate Total Remaining SoC
totalEnergy = batteryPowerJoule + (solarEnergy - totalResistiveEnergy);

RemainingApproximateSoC = (totalEnergy./totalBatteryJoule);

plot(RemainingApproximateSoC);



%%
%--------------------------------------------------------------------------
%---------------------------Genetic Algorithm Setup------------------------
%--------------------------------------------------------------------------

%---------------------------------
fitness = fitnessFunc(randomTime,RemainingApproximateSoC);
populationPool = probabilityArray(speedinMS,fitness);
%
for i=0:numberOfGenerations

firstVal = randi([1 length(populationPool)]);
secondVal = randi([1 length(populationPool)]);

firstParent = populationPool(firstVal:end);
secondParent = populationPool(secondVal:end);


child = crossover(populationPool,firstParent,secondParent);
child = mutation(child,mutationRate,lowestSpeedkmh);



plot((child)*3.6)
title("SoC:" + RemainingApproximateSoC(1) + " Time taken:" + randomTime(1) + " hours" ...
    + " Distance traveled:" + distancekm + " km")
xlabel('Column Number')
ylabel('Speed/kmh')
drawnow
pause(0.09)


randomTime = (DistanceMetres./child)/3600;


dragForce = calculateDragForce(dragCoefficient, ...
                               child, ...
                               airDensity, ...
                               frontalArea);

%calculate loss from rolling resistive forces
rollingResistiveForce = calculateRollingResistiveForce(mass, ...
                                               gravitionalAcceleration, ...
                                               tyreRollingResistance, ...
                                               angle);
%calculate power loss from incline
instantenousGravitionalForce = calculateGravitionalPower(mass, ...
                                                 gravitionalAcceleration,...
                                                 child, ...
                                                 angle);

totalResistiveForce = dragForce + rollingResistiveForce + instantenousGravitionalForce;
totalResistiveEnergy = totalResistiveForce * DistanceMetres;

%Calculate incoming power from solar arrays
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%issue here need to sort out
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% solarEnergy = calculateSolarPowerGen(solarPanelEfficiency, ...
%                                      solarPanelArea, ...
%                                      solarPerformanceRatio,...
%                                      solarIrradiance, ...
%                                      randomTime);

%calculate Total Remaining SoC
%totalEnergy = batteryPowerJoule + (solarEnergy - totalResistiveEnergy);
totalEnergy = batteryPowerJoule + (- totalResistiveEnergy);

RemainingApproximateSoC = (totalEnergy./totalBatteryJoule);

fitness = fitnessFunc(randomTime,RemainingApproximateSoC);
populationPool = probabilityArray(child,fitness);

if(i == (numberOfGenerations/2))

if all(child == child(1))
    break
end

end

end
plot((child)*3.6)
title("SoC:" + RemainingApproximateSoC(1) + " Time taken:" + randomTime(1) + " hours" ...
    + " Distance traveled:" + distancekm + " km")
xlabel('Column Number')
ylabel('Speed/kmh')
%%







%--------------------------------------------------------------------------
%----------------------Genetic Algorithm Functions-------------------------
%--------------------------------------------------------------------------

%-----------------------------fitness function-----------------------------
function  fitnessValue = fitnessFunc(timeArray, ...
                                     stateOfCharge)

timeArrayValues = ((1./timeArray)/(sum(1./timeArray))); %use square better
timeArrayValuesSquared=(timeArrayValues.*timeArrayValues);

normalisedTime = (timeArrayValuesSquared/(max(timeArrayValuesSquared)))*0.17;

normalisedSOC = (stateOfCharge/max(stateOfCharge)) * 0.83;

total = normalisedTime + normalisedSOC;
fitnessValue = (normalisedTime + normalisedSOC);
%fitnessValue =  (normalisedTime + normalisedSOC)
end
%--------------------------------------------------------------------------

%-------------------------Probability Function-----------------------------
%creating an array of speeds according to the fitness values
%higher fitness = higher probability = increased amount of value in array
function probability = probabilityArray(population,fitnessValues)

pool = 0; %%modify this for a better way for a preallocation
for i=1:length(population)

    arraySize = round(fitnessValues(i)*2);
    
    for j=1:arraySize
        pool(end+1) = population(i);

    end
    
end
probability = pool(2:end);
end
%--------------------------------------------------------------------------

%---------------------------Crossover Function-----------------------------
%Choosing data from both parents randomly
function child = crossover(populationPool,parent1,parent2)
child = parent1(1);


    position = randi(length(populationPool));

if position>length(parent1)
    position = length(parent1);
end

        child = [child parent1(1:position)];

        child = [child parent2(position:end)];

end

%--------------------------------------------------------------------------

%--------------------------Mutation Function-------------------------------
function MutatedChild = mutation(genes, mutationRate, lowestSpeedkmh)

for i=1:length(genes) 
    if ((randi([0 100]))/100) < mutationRate
        genes(i) = randi([lowestSpeedkmh 130])*(10/36);

    end
end
MutatedChild = genes;
end
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
%-----------------Battery Power Calculation Equations----------------------
%--------------------------------------------------------------------------

%--------------------------Drag Force Calculation--------------------------
function dragForce = calculateDragForce(dragCoeff,speed,fluidDensity,area)
speedSquared = speed.*speed;
dragForce = 0.5*dragCoeff*fluidDensity*area*speedSquared;

end
%--------------------------------------------------------------------------

%---------------------Rolling Resistive Force Calculation------------------
function rollingResistiveForce = calculateRollingResistiveForce(mass, ...
                                             gravitionalAcceleration, ...
                                             tyreRollingResistance, ...
                                             angle)

rollingResistiveForce = mass*gravitionalAcceleration*tyreRollingResistance*cosd(angle);

end
%--------------------------------------------------------------------------

%---------------------------Drag Power Function----------------------------
function dragPower = calculateDragPower(dragCoeff,speed,fluidDensity,area)

dragPower = calculateDragForce(dragCoeff,speed,fluidDensity,area).*speed;

end
%--------------------------------------------------------------------------

%---------------------------Gravitional Power Function---------------------
function gravitionalPower = calculateGravitionalPower(mass, ...
                                                 gravitonalAcceleration,...
                                                 Speed, ...
                                                 Angle)

gravitionalPower = mass*gravitonalAcceleration.*Speed*sind(Angle);

end
%--------------------------------------------------------------------------

%-------------------------Solar Power Calculation--------------------------
function solarEnergy = calculateSolarPowerGen(efficency, ...
                                             solarPanelArea, ...
                                             solarPerformanceRatio,...
                                             solarIrradiance, ...
                                             time)
timeSeconds = time.*3600;
solarPower = efficency*solarPanelArea*solarPerformanceRatio*solarIrradiance;

solarEnergy = cumtrapz(timeSeconds(1),solarPower);
    
end
%--------------------------------------------------------------------------


