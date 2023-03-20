#include <WiFi.h>
#include <WiFiAP.h>
#include <esp_wifi.h>
#define LED 9
const char* ssid     = "ChaseCar";
const char* password = "112233451";
const char* host = "192.168.4.2";
const int port = 8088;
const int newPort = 80;
/* create a server and listen on port 8088 */
WiFiServer server(8088);

//setup long range mode
void setupLRMode(int setAPorSTA);

//start the WiFi station with the specified name and password.
void setupServerConnection(const char* ssid, const char* password);

void recieveClientData();

void switchToServerConnection(const char* ssid,const char* password);

void setup()
{
  Serial.begin(2400);

  setupLRMode(WIFI_STA);
  setupServerConnection(ssid, password);

}

void loop() {

  recieveClientData();
  delay(100);
}

void setupLRMode(int setAPorSTA)
{

  WiFi.mode(WIFI_STA);
  int a = 0;
  if (setAPorSTA == WIFI_AP)
  {
    a = esp_wifi_set_protocol( WIFI_IF_AP, WIFI_PROTOCOL_LR );
  }
  else if (setAPorSTA == WIFI_STA)
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


void setupServerConnection(const char* ssid, const char* password)
{
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
}

void switchToClientConnection(const char* ssid, const char* password)
{
  Serial.println("Switching to Server...");
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
  while (1)
  {
    sendToServer("Client Sending Now");
  }
}

void recieveClientData()
{
  /* listen for client */
  WiFiClient client = server.available();
  uint8_t data[40];
  if (client) {
    //Serial.println("New Client");
    /* check client is connected */

    while (client.connected()) {
      if (client.available()) {
        int len = client.read(data, 120);
        if (len < 120) {
          data[len] = '\0';
        } else {
          data[120] = '\0';
        }

        //Serial.print("client sent: ");
        //Serial.println(len);
        
        String val = "";
        Serial.print((char*) data);
        for(int i=0; i<len; i++)
        {
          
           //Serial.println(len);
           if(data[i] == 70)
           {
             
             Serial.println(" ");
           }
           
        }
        
        //Serial.println(val);
        if (val == "Switch")
        {
        
          switchToClientConnection(ssid, password);
        }
                if (val == "Finished")
        {
        
          Serial.println("");
        }

      }

    }
  }
}

void sendToServer(char* data)
{
  delay(1000);
  Serial.print("connecting to ");
  Serial.println(host);

  /* Use WiFiClient class to create TCP connections */
  WiFiClient client;
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
  /* This will send the data to the server */
  client.print((char *)data);
  client.stop();
  if (data == "Switch")
  {
    switchToServerConnection(ssid, password);
  }

}

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
