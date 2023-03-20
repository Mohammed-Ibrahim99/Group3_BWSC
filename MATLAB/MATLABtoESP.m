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
write(ESP32,"Speed=","string")
write(ESP32,15,"uint8")

%Read Text From Arduino or ESP32
%disp('Reading.............');
%rAddress = read(ESP32,20,"uint8");
end
%%
recievedText = [];
recievedNumber = [];

for i=1:length(rAddress)
     recievedText(i) = char(rAddress(i));
     if(char(rAddress(i)) == '=')
         recievedNumber = rAddress(i+1);
         break
     end
end
char(recievedText)
flush(ESP32);
