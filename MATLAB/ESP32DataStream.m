while(isempty(serialportlist("available")))

    disp('Connecting')

end
ESP32Port = serialportlist("available");

ESP32Obj = serialport(ESP32Port,300);

configureTerminator(ESP32Obj,"CR/LF");

flush(ESP32Obj);

ESP32Obj.UserData = struct("Data",[],"Count",1);

configureCallback(ESP32Obj,"terminator",@readSineWaveData)

function readSineWaveData(src, ~)

% Read the ASCII data from the serialport object.
data = readline(src);

% Convert the string data to numeric type and save it in the UserData
% property of the serialport object.
src.UserData.Data(end+1) = str2double(data);

% Update the Count value of the serialport object.
src.UserData.Count = src.UserData.Count + 1;
plot(src.UserData.Data(2:end));

if  mod(src.UserData.Count,1000) == 0 
    disp('here')
    xlim('auto')
end
% If 1001 data points have been collected from the Arduino, switch off the
% callbacks and plot the data.
% comment out this bit to plot live data
% if src.UserData.Count > 1001
%     configureCallback(src, "off");
%     plot(src.UserData.Data(2:end));
% end
end

