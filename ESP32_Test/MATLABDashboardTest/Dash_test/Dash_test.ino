int i=0;
int Speed[10] = {10  ,  20 ,   30,    40,    50,    60,    70,    80,    90,    100};
int altitude[10] = {10 ,   20  ,   30  ,   40   ,  50  ,   60   ,  70  ,   75   ,  95 ,    105};
int windSpeed[10] = {15 ,    25  ,   20  ,  30   , 45   , 40 ,    60  ,   55 ,    50 ,   45};
void setup() 
{
  Serial.begin(2400);
}
 
void loop() 
{
   Serial.print(" speed=");
   Serial.print(Speed[i]);
   Serial.print(" altitude=");
   Serial.print(altitude[i]);
   Serial.print(" windSpeed=");
   Serial.print(windSpeed[i]);
   Serial.print(" i=");
   Serial.print(i);
   Serial.println(' ');

 
   i++; 
   if(i==10)
   {
    i=0;
   }
}
