%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Send Data
 ESP32Com = serial('COM4','BaudRate',9600);  % insert your serial
                                               %properties here

 sendData = 5;
 fopen(ESP32Com);
 fprintf(ESP32Com,'%i',sendData); %this will send 5 to the arduino
 fscanf(ESP32Com)    %this will read response
                     %or use BytesAvailableFcn property of serial