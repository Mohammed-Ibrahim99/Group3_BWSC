#include <WiFi.h>
#include <esp_wifi.h>
/* change ssid and password according to yours WiFi*/
const char* ssid     = "ChaseCar";
const char* password = "112233451";
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
/*
   This is the IP address of your PC
   [Wins: use ipconfig command, Linux: use ifconfig command]
*/
const char* host = "192.168.4.1";
const int port = 8088;
WiFiServer server(8088);
WiFiClient client;
void setupLRMode(wifi_mode_t setAPorSTA);
void setupClientConnection(const char* ssid, const char* password);
void switchToServerConnection(const char* ssid,const char* password)
{ 
  Serial.println("Switching to Server...");
  Serial.print("Connecting to ");
  Serial.println(ssid);
  /* connecting to WiFi */
  // You can remove the password parameter if you want the AP to be open.
  WiFi.softAP(ssid, password);
  IPAddress myIP = WiFi.softAPIP();
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  Serial.println("");
  Serial.println("WiFi connected with IP address: ");
  Serial.println(WiFi.localIP());
  /* start Server */
  server.begin();
  while(1)
  {
    recieveClientData();
  }
}

void recieveClientData()
{
    /* listen for client */
  WiFiClient client = server.available();
  uint8_t data[30];
  if (client) {
   Serial.println("New Client");
    /* check client is connected */
    while (client.connected()) {
      if (client.available()) {
        int len = client.read(data, 50);
        if (len < 50) {
          data[len] = '\0';
        } else {
          data[50] = '\0';
        }
        
        Serial.print("client sent: ");
        Serial.println((char *)data);
        
   
      }
      
    }
  }
}
template<typename Value>
void sendToServer(Value data)
{
  /* This will send the data to the server */
  client.print(data);
  
  //client.stop();
//  if((char)isDigit(data))
//  {
//    
//  }
//  else if (data == "Switch" )
//  {
//    switchToServerConnection(ssid,password);
//  }
  
}
void ConnectToServerToSend()
{
    delay(1000);
  Serial.print("connecting to ");
  Serial.println(host);
  
  /* Use WiFiClient class to create TCP connections */
  
  //Serial.println(client.read());
  if (!client.connect(host, port, 200)) {
    Serial.println("connection failed");
    WiFi.begin(ssid, password);
    /* wait until ESP32 connect to WiFi*/
    while (WiFi.status() != WL_CONNECTED)
    {
      delay(500);
      Serial.println("Reconnecting....");
    }
    return;
  }
}
void recieveServerData();
void RecieveFromServer();
void setup()
{
  Serial.begin(115200);
  setupLRMode(WIFI_STA);
  setupClientConnection(ssid, password);
  ConnectToServerToSend();


}
void loop()
{
Serial.println("Sending");

sendToServer("speed=");
 sendToServer(Speed[i]);
   sendToServer("solar temp=");
   sendToServer(solarTemp[i]);
   sendToServer("SOC=");
   sendToServer(SOC[i]);
   sendToServer("Incline Angle=");
   sendToServer(inclineAngle[i]);
   sendToServer("MTemp=");
   sendToServer(MotorTemp[i]);
   sendToServer("BTemp=");
   sendToServer(BattTemp[i]);
   sendToServer("Voltage=");
   sendToServer(Volt[i]);
   sendToServer("Power=");
   sendToServer(Power[i]);
   sendToServer("SP=");
   sendToServer(SPower[i]);
   sendToServer("MP=");
   sendToServer(MPower[i]);
   sendToServer("i=");
   sendToServer(i);
   sendToServer("F");

 
   i++; 
   if(i==10)
   {
    i=0;
  }
  delay(1000);
}


void RecieveFromServer()
{
  
  Serial.print("connecting to ");
  Serial.println(host);

  /* Use WiFiClient class to create TCP connections */
  WiFiClient client;
  if (!client.connect(host, port, 200)) {
    Serial.println("connection failed");
    WiFi.begin(ssid, password);
    /* wait until ESP32 connect to WiFi*/
    while (WiFi.status() != WL_CONNECTED)
    {
      
      Serial.println("Reconnecting....");
    }
    return;
  }
  /* This will send the data to the server */
      /* check client is connected */
    uint8_t data[30];
    while (client.connected()) {
      Serial.print(client.read());
      if (client.available()) {
        int len = client.read(data, 50);
        if (len < 50) {
          data[len] = '\0';
        } else {
          data[50] = '\0';
        }
        
        Serial.print("Server sent: ");
        Serial.println((char *)data);
        client.print("Sweat");
   
      }

  client.stop();
}
}
void setupLRMode(wifi_mode_t setAPorSTA)
{

  WiFi.mode(setAPorSTA);
  int a = 0;
  if(setAPorSTA == WIFI_AP)
  {
      a = esp_wifi_set_protocol( WIFI_IF_AP, WIFI_PROTOCOL_LR );
  }
  else if(setAPorSTA == WIFI_STA)
  {
    a = esp_wifi_set_protocol( WIFI_IF_STA, WIFI_PROTOCOL_LR );
  }
  if (a == 0)
  {
    Serial.println(" ");
    Serial.print("Error = ");
    Serial.print(a);
    Serial.println(" , Mode LR OK!");
  }
  else//if some error in LR config
  {
    Serial.println(" ");
    Serial.print("Error = ");
    Serial.print(a);
    Serial.println(" , Error in Mode LR!");
  }
  
  }

  void setupClientConnection(const char* ssid, const char* password)
  {
    Serial.print("Connecting to ");
    Serial.println(ssid);
    /* connect to your WiFi */
    WiFi.begin(ssid, password);
    /* wait until ESP32 connect to WiFi*/
    while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
    }
    Serial.println("");
    Serial.println("WiFi connected with IP address: ");
    Serial.println(WiFi.localIP());
    // print the received signal strength
    long rssi = WiFi.RSSI();
    Serial.print("Signal strength (RSSI):");
    Serial.print(rssi);
    Serial.println(" dBm");
    
  }
  


void recieveServerData()
{
     WiFiClient client;
    /* check client is connected */
    uint8_t data[30];
    while (client.connected()) {
     
      if (client.available()) {
        int len = client.read(data, 50);
        if (len < 50) {
          data[len] = '\0';
        } else {
          data[50] = '\0';
        }
        
        Serial.print("Server sent: ");
        Serial.println((char *)data);
        client.print("Sweat");
   
      }
      
    }
  }
