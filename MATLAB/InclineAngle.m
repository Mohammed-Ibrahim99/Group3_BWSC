%%
%read latitude and longitude data
%need the wsc_elevation.csv file from https://github.com/uw-midsun/route-data
%file will be in world-solar-challenge/2009/ from the link above
RaceData = readtable('wsc_elevation.csv','NumHeaderLines',1); 
distanceTable = RaceData(:,1);
latitudeTable = RaceData(:,2);
longitudeTable = RaceData(:,3);
altitudeTable = RaceData(:,4);

%convert table to double numbers
distance = table2array(distanceTable);
latitude = table2array(latitudeTable);
longitude = table2array(longitudeTable);
altitude = table2array(altitudeTable);


% Finding Angle of Incline, code used was from: 
% https://uk.mathworks.com/matlabcentral/answers/500908-how-to-calculate-the-slope-from-geopraphical-coordinates#:~:text=slope%3Datand(diff(gpsz,2%2Bdiff(gpsy).
%
%
% Read page 2 and 3 of the example of finding the slope (note that the angle is just inverse tan of slope): 
% https://www.caee.utexas.edu/prof/maidment/giswr2011/docs/Slope.pdf
% the Easting, northing and elevation are the same as ned in the function
% below which converts from latitude, longitutde and elevation to easting
% northing and elevation.
wgs84 = wgs84Ellipsoid;
[xNorth,yEast,zDown] = geodetic2ned(latitude,longitude,altitude,latitude(1),longitude(1),altitude(1),wgs84);
angle=atand(diff(zDown)./sqrt(diff(xNorth).^2+diff(yEast).^2));
%array sizes are not equal so add an element at the end for plotting
angle(end+1)=0;
plot(distance,angle)