#include <WiFi.h>
#define buttonPin 0 
#define LEDPin 5

// Network information
const char* ssid = "Sweat";
const char* password = "1122334451";

// ThingSpeak settings
char server[] = "api.thingspeak.com";
String writeAPIKey = "0OEDNKN41AGW3J85";

// Constants
const unsigned long postingInterval = 15L * 1000L;

// Global variables
unsigned long lastConnectionTime = 0;
int measurementNumber = 0;

void setup() {
  // put your setup code here, to run once:
    Serial.begin(115200);
    pinMode(buttonPin,INPUT);
    pinMode(LEDPin, OUTPUT);
    WiFi.mode(WIFI_AP);
    connectWiFi();
    while(1)
    {
        // scan for existing networks:
  Serial.println("Scanning available networks...");
  listNetworks();
  delay(10000);
    }

}

void loop() {
  // put your main code here, to run repeatedly:
  const int numberPoints = 7;
float wifiStrength;

  // In each loop, make sure there is an Internet connection.
    if (WiFi.status() != WL_CONNECTED) { 
        connectWiFi();
    }

    // If a button press is detected, write the data to ThingSpeak.
    if (digitalRead(buttonPin) == LOW){
        if (millis() - lastConnectionTime > postingInterval) {
            blinkX(2,250); // Verify the button press.
            wifiStrength = getStrength(numberPoints); 
            httpRequest(wifiStrength, measurementNumber);
            blinkX(measurementNumber,200);  // Verify that the httpRequest is complete.
            measurementNumber++;
        }
        
    }
}

void connectWiFi(){
    WiFi.begin(ssid, password);
    while (WiFi.status() != WL_CONNECTED){
      Serial.println("Connecting To Wifi...");
        WiFi.begin(ssid);
        
        delay(3000);
    }
    
    // Display a notification that the connection is successful. 
    Serial.println("Connected");
    // if you are connected, scan for available WiFi networks and print the number discovered:
    Serial.println("** Scan Networks **");
    byte numSsid = WiFi.scanNetworks();

    Serial.print("Number of available WiFi networks discovered:");
    Serial.println(numSsid);
    blinkX(5,50);  
}

void httpRequest(float field1Data, int field2Data) {

    WiFiClient client;
    
    if (!client.connect(server, 80)){
      
        Serial.println("Connection failed");
        lastConnectionTime = millis();
        client.stop();
        return;     
    }
    
    else{
        
        // Create data string to send to ThingSpeak.
        String data = "field1=" + String(field1Data) + "&field2=" + String(field2Data); //shows how to include additional field data in http post
        
        // POST data to ThingSpeak.
        if (client.connect(server, 80)) {
          
            client.println("POST /update HTTP/1.1");
            client.println("Host: api.thingspeak.com");
            client.println("Connection: close");
            client.println("User-Agent: ESP32WiFi/1.1");
            client.println("X-THINGSPEAKAPIKEY: "+writeAPIKey);
            client.println("Content-Type: application/x-www-form-urlencoded");
            client.print("Content-Length: ");
            client.print(data.length());
            client.print("\n\n");
            client.print(data);
            
            Serial.println("RSSI = " + String(field1Data));
            lastConnectionTime = millis();   
            delay(250);
        }
    }
    client.stop();
}

// Take measurements of the Wi-Fi strength and return the average result.
int getStrength(int points){
    long rssi = 0;
    long averageRSSI = 0;
    
    for (int i=0;i < points;i++){
        rssi += WiFi.RSSI();
        delay(20);
    }

   averageRSSI = rssi/points;
    return averageRSSI;
}

// Make the LED blink a variable number of times with a variable delay.
void blinkX(int numTimes, int delayTime){ 
    for (int g=0;g < numTimes;g++){

        // Turn the LED on and wait.
        digitalWrite(LEDPin, HIGH);  
        delay(delayTime);

        // Turn the LED off and wait.
        digitalWrite(LEDPin, LOW);
        delay(delayTime);
        
    }
}


void printMacAddress() {
  // the MAC address of your Wifi shield
  byte mac[6];

  // print your MAC address:
  WiFi.macAddress(mac);
  Serial.print("MAC: ");
  Serial.print(mac[5], HEX);
  Serial.print(":");
  Serial.print(mac[4], HEX);
  Serial.print(":");
  Serial.print(mac[3], HEX);
  Serial.print(":");
  Serial.print(mac[2], HEX);
  Serial.print(":");
  Serial.print(mac[1], HEX);
  Serial.print(":");
  Serial.println(mac[0], HEX);
}

void listNetworks() {
  // scan for nearby networks:
  Serial.println("** Scan Networks **");
  int numSsid = WiFi.scanNetworks();
  if (numSsid == -1) {
    Serial.println("Couldn't get a wifi connection");
    while (true);
  }

  // print the list of networks seen:
  Serial.print("number of available networks:");
  Serial.println(numSsid);

  // print the network number and name for each network found:
  for (int thisNet = 0; thisNet < numSsid; thisNet++) {
    Serial.print(thisNet);
    Serial.print(") ");
    Serial.print(WiFi.SSID(thisNet));
    Serial.print("\tSignal: ");
    Serial.print(WiFi.RSSI(thisNet));
    Serial.print(" dBm");
  }
}
