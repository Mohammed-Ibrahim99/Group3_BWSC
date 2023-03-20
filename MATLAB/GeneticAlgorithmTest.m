clc
clear variables
close all
%--------------------------------------------------------------------------
%---------------------------Constants and Variables------------------------
%--------------------------------------------------------------------------


%-----------------------Drag Force Constants-------------------------------
dragCoefficient = 0.25;
frontalArea = 1.8;
airDensity = 1.225;
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
totalBatteryPowerWh = 35.5*1000;
startingSoC = 100; %value in percentage
batteryPowerWh = (startingSoC/100)*totalBatteryPowerWh;
%--------------------------------------------------------------------------

%--------------------Solar Panel Values------------------------------------
solarPanelArea = 5;
solarPanelEfficiency = 0.22;
solarPerformanceRatio = 0.75;
solarIrradiance = 0;
%--------------------------------------------------------------------------

%-------------------Genetic algorithm variables----------------------------
dataSize = 50;
numberOfGenerations = 100;
mutationRate = 0.01;
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%-------------------------------Initialisation-----------------------------
%--------------------------------------------------------------------------

%-----------------------Finding Time from random speeds--------------------
%Distance in metres
Distance = 317*1000;
%Maximum amount of time remaining in hours
maxTime = 8;
%For the remaining amount of time calculate the lowest speed possible
lowestSpeedMS = Distance/(maxTime*3600);
lowestSpeedkmh = ceil(lowestSpeedMS*3.6);
%Speed in miles per hour
randomSpeedkmh = randi([lowestSpeedkmh 60],1,dataSize);
%converting speed to metres per second (all calculations involving speed
%will be using it in metres per second)
speedinMS = randomSpeedkmh*(10/36);
%--------------------------------------------------------------------------

%--------------------------Power Calculations------------------------------
%calculate Drag Power from speed to find power lost from speed
randomTime = ((Distance./speedinMS))/3600;

dragForce = calculateDragForce(dragCoefficient, ...
                               speedinMS, ...
                               airDensity, ...
                               frontalArea);

rollingResistiveForce = calculateRollingResistiveForce(mass, ...
                                               gravitionalAcceleration, ...
                                               tyreRollingResistance);

totalResistiveForce = dragForce + rollingResistiveForce;
totalResistivePowerWatts = totalResistiveForce.*speedinMS;

%calculate gravitional power loss


%Calculate incoming power from solar arrays
solarPowerWatts = calculateSolarPowerGen(solarPanelEfficiency, ...
                                         solarPanelArea, ...
                                         solarPerformanceRatio, ...
                                         solarIrradiance);

totalSolarPower = cumsum(solarPowerWatts);

%calculate power loss from incline


%calculate Total Power
totalPower = batteryPowerWh + (solarPowerWatts - totalResistivePowerWatts);

RemainingApproximateSoC = (totalPower./totalBatteryPowerWh);


%--------------------------------------------------------------------------
%---------------------------Genetic Algorithm Setup------------------------
%--------------------------------------------------------------------------

%---------------------------------
fitness = fitnessFunc(randomTime,RemainingApproximateSoC,batteryPowerWh);
populationPool = probabilityArray(speedinMS,fitness);

% for i=0:numberOfGenerations
% 
% firstVal = randi([1 length(populationPool)]);
% secondVal = randi([1 length(populationPool)]);
% 
% firstParent = populationPool(firstVal:end);
% secondParent = populationPool(secondVal:end);
% 
% 
% child = crossover(randomSpeed,firstParent,secondParent);
% child = mutation(child,mutationRate);
% 
% plot(child)
% xlabel('Column Number')
% ylabel('Speed/ms')
% drawnow
% pause(0.09)
% 
% randomTime = (Distance./child)/3600;
% 
% dragForce = calculateDragForce(dragCoefficient, ...
%                                child, ...
%                                airDensity, ...
%                                frontalArea);
% 
% totalResistiveForce = rollingResistiveForce + dragForce;
% resistivePower = totalResistiveForce.*child;
% resistivePowerkWh = resistivePower.*randomTime;
% 
% gravitionalPower = calculateGravitionalPower(mass, ...
%                                              gravitionalAcceleration,...
%                                              child);
% 
% gravitionalPowerkWh = gravitionalPower.*randomTime;
% 
% solarPowerWatts = calculateSolarPowerGen(solarPanelEfficiency, ...
%                                     solarPanelArea, ...
%                                     solarPerformanceRatio, ...
%                                     solarIrradiance);
% 
% solarPowerkWh = solarPowerWatts.*randomTime;
% 
% 
% 
% totalPower = batteryPowerkWh - resistivePowerkWh - gravitionalPowerkWh  + solarPowerkWh;
% 
% fitness = fitnessFunc(randomTime,totalPower,batteryPowerkWh);
% populationPool = probabilityArray(child,fitness);
% 
% 
% 
% end









%--------------------------------------------------------------------------
%----------------------Genetic Algorithm Functions-------------------------
%--------------------------------------------------------------------------

%-----------------------------fitness function-----------------------------
function  fitnessValue = fitnessFunc(timeArray, ...
                                     stateOfCharge, ...
                                     ~)

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
function MutatedChild = mutation(genes, mutationRate)

for i=1:length(genes) 
    if ((randi([0 100]))/100) < mutationRate
        genes(i) = randi([10 80])*0.44704;

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
                                             tyreRollingResistance)

rollingResistiveForce = mass*gravitionalAcceleration*tyreRollingResistance;

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
                                                 verticalSpeed)

gravitionalPower = mass*gravitonalAcceleration.*verticalSpeed;

end
%--------------------------------------------------------------------------

%-------------------------Solar Power Calculation--------------------------
function solarPower = calculateSolarPowerGen(efficency, ...
                                             solarPanelArea, ...
                                             solarPerformanceRatio,...
                                             solarIrradiance)

solarPower = efficency*solarPanelArea*solarPerformanceRatio*solarIrradiance;

end
%--------------------------------------------------------------------------


