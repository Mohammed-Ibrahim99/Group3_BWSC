clear variables;
close all;
clc;

while(isempty(serialportlist("available")))

    disp('Connecting')

end
fclose(instrfindall);
Port = serialportlist("available");



Arduinoserial = serial(Port);

fopen(Arduinoserial);

AVal = zeros;

for i=0:10
AVal= fscanf(Arduinoserial);
end
fclose(Arduinoserial);
