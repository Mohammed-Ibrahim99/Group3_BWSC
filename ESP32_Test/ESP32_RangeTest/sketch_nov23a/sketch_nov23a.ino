// based on https://gist.github.com/yaqwsx/ac662c9b600ef39a802da0be1b25d32d
// 2018.07.14 jnogues@gmail.com, Jaume Nogués, rPrim Tech
// This sketch shows the use of 802.11 LR (Low Rate - also Long Range)
// master.ino

#include <Arduino.h>
#include <WiFi.h>
#include <WiFiUDP.h>
#include <esp_wifi.h>

//-----------------------------------------------------------------------------------------------------
//                               Function to receive and reply to incoming packets
void udpreceiver(); // packet incomming from solar car to chase car
//-----------------------------------------------------------------------------------------------------

const char* ssid = "EVERYBODY_IN_THE_313";//AP ssid
const char* password = "12345678"; // AP password
const char* ssidRouter = "EVERYBODY_IN_THE_313"; // STA router ssid
const char* passwordRouter = "12345678"; // STA router password

char  packetBuffer[255]; // Buffer to hold incoming packet
char  ReplyBuffer = 'a'; // A string to send back to the slave

// Creates a named instance of the WiFi udp class that can send and receive udp messages.
// On AVR based boards, outgoing udp packets are limited to 72 bytes in size currently
WiFiUDP udp;

void setup() {
  pinMode(5, OUTPUT); // Builtin Led, for debug
  digitalWrite(5, HIGH);
  Serial.begin( 115200 );

  // This is the Master device. All other devices are slaves
  Serial.println( "Slave" ); 

  // First, we start STA mode and connect to router
  WiFi.mode( WIFI_AP );
  int a = esp_wifi_set_protocol( WIFI_IF_AP, WIFI_PROTOCOL_LR );
  Serial.println(a);
  //WiFi.begin(ssidRouter,passwordRouter);
   WiFi.softAP(ssidRouter, passwordRouter); // For debugging purposes

  // Wifi connection checking will continue for ever unless a connection is established 
//  while (WiFi.status() != WL_CONNECTED)
//  {
    delay(500);
    Serial.print("."); //
//  }

  // Once a connection is established:
  
  Serial.println("Router WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  // Second, we start AP mode with LR protocol
  // This AP ssid is not visible with our regular devices
  //WiFi.mode( WIFI_AP ); // For AP mode
  
  // Here configure the Long Range (LR) mode
  // esp_wifi_set_protocol() returns ESP_OK if wifi protocol was set successfuly
  //int a = esp_wifi_set_protocol( WIFI_IF_STA, WIFI_PROTOCOL_LR );
  //int a = esp_wifi_set_protocol( WIFI_IF_STA, WIFI_PROTOCOL_LR );
  //Serial.println(a);
  
  // Set up a soft access point to establish a Wi-Fi network.
  //WiFi.softAP(ssid, password);
  //Serial.println( WiFi.softAPIP() );
  Serial.println("#");//for debug
  delay( 100 );
  digitalWrite(5, LOW);
  udp.begin( 8888 ); // Need to find this out ****************************************************************************************************
}

void loop()
{
   udpreceiver();
  
  // Wait a second for the next message
  delay( 100 );
}

void udpreceiver() // packet from the solar car
{
  //Serial.println("In Function");
  udp.beginPacket({192,168,4,2}, 8888);

  udp.write(ReplyBuffer); // Control data from chase car to solar car.

  udp.endPacket();
  int packetSize = udp.parsePacket();

  if (packetSize) {

    Serial.print("Received packet of size ");

    Serial.println(packetSize);

    Serial.print("From ");

    IPAddress remoteIp = udp.remoteIP();

    Serial.print(remoteIp);

    Serial.print(", port ");

    Serial.println(udp.remotePort());

    // read the packet into packetBufffer

    int len = udp.read(packetBuffer, 255);

    if (len > 0) {

      packetBuffer[len] = 0; // Identifier for user

    }

    Serial.println("Contents:");

    Serial.println(packetBuffer);

    // send a reply, to the IP address and port that sent us the packet we received - for tranceiver

    udp.beginPacket(udp.remoteIP(), udp.remotePort());

    udp.write(ReplyBuffer); // Control data from chase car to solar car.

    udp.endPacket();
  }
}
