int i=0;
int Speed[10] = {72  ,  57 ,   60,    61,    70,    67,    55,    60,    45,    61};
float inclineAngle[10] = {0.5 ,   0.1  ,   1  ,   1   ,  1.5  ,   1   ,  0.5  ,   0.5   ,  0 ,    0.1};
int SOC[10] = {85 ,    83  ,   77  ,  75   , 60   , 58 ,    62  ,   75 ,    80 ,   90};
int solarTemp[10] = {15, 16, 18, 21, 19, 20, 25, 24, 23, 27};
int BattTemp[10] = {21, 25, 31, 34, 45, 32, 55, 83, 80, 30};
int MotorTemp[10] = {20, 25, 24, 23, 27, 55, 83, 80, 30, 45};
float Volt[10] = {16, 15.5, 15.3, 15.4, 15.2, 14.5, 14, 13.9, 13.8, 13.5};
int Power[10] = {500, 1200, 1220, 1130, 1000, 600, 2500, 2430, 1500, 1000};
int MPower[10] = {1000, 1720, 1820, 1530, 1300, 1600, 3500, 2930, 1750, 1000};
int SPower[10] = {500, 520, 600, 400, 300, 1000, 1000, 500, 250, 0};


void setup() 
{
  Serial.begin(2400);
}
 
void loop() 
{
   Serial.print("speed=");
   Serial.print(Speed[i]);
   Serial.print("solar temp=");
   Serial.print(solarTemp[i]);
   Serial.print("SOC=");
   Serial.print(SOC[i]);
   Serial.print("Incline Angle=");
   Serial.print(inclineAngle[i]);
   Serial.print("MTemp=");
   Serial.print(MotorTemp[i]);
   Serial.print("BTemp=");
   Serial.print(BattTemp[i]);
   Serial.print("Voltage=");
   Serial.print(Volt[i]);
   Serial.print("Power=");
   Serial.print(Power[i]);
   Serial.print("SP=");
   Serial.print(SPower[i]);
   Serial.print("MP=");
   Serial.print(MPower[i]);
   Serial.print("i=");
   Serial.print(i);
   Serial.println(' ');

 
   i++; 
   if(i==10)
   {
    i=0;
   }
}
