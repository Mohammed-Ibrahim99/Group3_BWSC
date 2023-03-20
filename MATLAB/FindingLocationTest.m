
clc

% send_url = "http://api.ipstack.com/check?access_key=6ba32b1516840e63921fd1db8994a750";
% geo_req = py.requests.get(send_url);
% geo_json = json.loads(geo_req.text);
% latitude = py.geo_json('latitude');
% longitude = py.geo_json('longitude');
% city = py.geo_json('city');
% disp(latitude)
% disp(longitude)
% disp(city)
latitude = 0;
longtitude = 0;
city = 0;
commandStr = 'C:\Users\moaik\PycharmProjects\pythonProject\venv\Scripts\python.exe C:/Users/moaik/PycharmProjects/pythonProject/main.py latitude longtitude city';
 [status, commandOut] = system(commandStr);
 if status==0
     fprintf('squared result is %d\n',str2num(commandOut));
 end