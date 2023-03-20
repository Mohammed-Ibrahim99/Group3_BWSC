#include <esp_now.h>
#include <WiFi.h>
#include <esp_wifi.h>
#include "Wire.h"

#define I2C_DEV_ADDR 0x56

// REPLACE WITH THE MAC Address of your receiver 
uint8_t broadcastAddress[] = {0x8C, 0x4B, 0x14, 0x1C, 0xB8, 0xBC};

// Variable to store if sending data was successful
String success;

// Create a struct_message called BME280Readings to hold sensor readings
byte tx_msg[9] = {'C',75};
byte tx_msgnum[9] = {'O',89};
// Create a struct_message to hold incoming sensor readings
byte rx_msg[9];

esp_now_peer_info_t peerInfo;

// Callback when data is sent
void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  Serial.print("\r\nLast Packet Send Status:\t");
  Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
  if (status == 0){
    success = "Delivery Success :)";
  }
  else{
    success = "Delivery Fail :(";
  }
}

// Callback when data is received
void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy( &rx_msg, incomingData, sizeof(rx_msg) );
  Serial.print("Bytes received: ");
  Serial.println(len);
  for(int i=0; i<9; i++)
  {
    Serial.println((char*)incomingData);
  }
}
 
void setup() {
  // Init Serial Monitor
  Serial.begin(115200);

  // Setup I2C
  //setupI2C();
  
  // Set device as a Wi-Fi Station
  setupLRmode();
  Serial.println(WiFi.macAddress());
  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  }

  // Once ESPNow is successfully Init, we will register for Send CB to
  // get the status of Trasnmitted packet
  esp_now_register_send_cb(OnDataSent);
  
  // Register peer
  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;  
  peerInfo.encrypt = false;
  
  // Add peer        
  if (esp_now_add_peer(&peerInfo) != ESP_OK){
    Serial.println("Failed to add peer");
    return;
  }
  // Register for a callback function that will be called when data is received
  esp_now_register_recv_cb(OnDataRecv);
}
 
void loop() {
   esp_err_t result = esp_now_send( broadcastAddress, tx_msg, sizeof(tx_msg) );
   esp_err_t res = esp_now_send( broadcastAddress, tx_msgnum, sizeof(tx_msgnum) );
  if (result == ESP_OK) {
    Serial.println("Sent with success");
  }
  else {
    Serial.println("Error sending the data");
  }
  delay(300);
}

//void setupI2C() {
//  Wire.onReceive(onReceive);
//  Wire.begin((uint8_t)I2C_DEV_ADDR);
//}

void setupLRmode() {
  WiFi.mode(WIFI_STA);
  int a = esp_wifi_set_protocol( WIFI_IF_STA, WIFI_PROTOCOL_LR );
  
  if (a == 0) {
    Serial.println(" ");
    Serial.print("Error = ");
    Serial.print(a);
    Serial.println(" , Mode LR OK!");
  } else { //if some error in LR config
    Serial.println(" ");
    Serial.print("Error = ");
    Serial.print(a);
    Serial.println(" , Error in Mode LR!");
  }
}

//void onReceive(int len) {
//  Serial.printf("onReceive[%d]: ", len);
//  //byte data[9];
//  int i = 0;
//  while( Wire.available() ) {
//    byte d = Wire.read();
//    Serial.print( " 0x" );
//    Serial.print( d, HEX );
//    tx_msg[i++] = d;
//  }
//  Serial.println();
//  
//  // Send message via ESP-NOW
//  esp_err_t result = esp_now_send( broadcastAddress, tx_msg, sizeof(tx_msg) );
//   
//  if (result == ESP_OK) {
//    Serial.println("Sent with success");
//  }
//  else {
//    Serial.println("Error sending the data");
//  }
//}
