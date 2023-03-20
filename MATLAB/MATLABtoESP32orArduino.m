clc
close all
clear variables

%Wait for connection to available port
while isempty(serialportlist("all"))

disp('Connecting');

end

%connect to ESP32
ESP32Port = serialportlist("all");

%setup the Baud rate and connection to port
ESP32 = serialport(ESP32Port,9600);

rAddress = [];

while isempty(rAddress)
%Wrte Text To Arduino or ESP32
disp('Writing............');

%Write the string Speed= to ESP32 
write(ESP32,"Speed=","string")

%Write the decimal number 15 to ESP32
write(ESP32,15,"uint8")
end