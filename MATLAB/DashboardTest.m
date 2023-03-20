clear all
clc
% ESP32Port = serialportlist("available")
% arduino=serial(ESP32Port,'BaudRate',9600)
% 
%  
% fopen(arduino);
%  
% x=linspace(1,100);
%    
% for i=1:length(x)
% 	y(i)=fscanf(arduino,'%d');
% end
% 	
% fclose(arduino);
% disp('making plot..')
% plot(x,y);
Expression = 'Speed';
str = ['Speed=15' ...
    ' Time = 18'];
ml = zeros(10,1)
altitude = randi([1 20],1,10);
separateData(Expression,str)

        function filteredData = separateData(separationText,data)
            textToAdd = '=[\d.]+';
            dataToSeparate = '[\d.]+';

            fullText = append(separationText,textToAdd);
            dataAndText = regexp(data,fullText,'match');
            dataAndText = char(dataAndText);
            filteredData = str2double(regexp(dataAndText,dataToSeparate,'match'));

        end