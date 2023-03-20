#include <esp_now.h>
#include <WiFi.h>
#include <esp_wifi.h>

// REPLACE WITH THE MAC Address of your receiver
uint8_t broadcastAddress[] = {0xC8, 0xC9, 0xA3, 0xC5, 0xFB, 0x60};

// Variable to store if sending rx_msg was successful
String success;//, targetSpeed;
char targetSpeed;
// Create a struct_message called BME280Readings to hold sensor readings
byte tx_msg[9];

// Create a struct_message to hold incoming sensor readings
byte rx_msg[9];

esp_now_peer_info_t peerInfo;

// Callback when rx_msg is sent
void Onrx_msgSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  Serial.print("\r\nLast Packet Send Status:\t");
  Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
  if (status == 0) {
    success = "Delivery Success :)";
  }
  else {
    success = "Delivery Fail :(";
  }
}

// Callback when rx_msg is received
void Onrx_msgRecv(const uint8_t * mac, const uint8_t *incomingrx_msg, int len) {
  memcpy( &rx_msg, incomingrx_msg, sizeof(rx_msg) );
  for ( int i = 0; i < 9; i++ ) {
    Serial.print( " 0x" );
    Serial.print( rx_msg[i], DEC );
    Serial.println(incomingrx_msg[i]);
    
  }
  
  Serial.println();
  Serial.print("Bytes received: ");
  Serial.println(len);

  byte I2C_ID = rx_msg[0];
  Serial.print("I2C_ID: ");
  Serial.println((char)I2C_ID);
  memcpy( rx_msg, rx_msg+1, sizeof(rx_msg)-1 );
  String TRITside, MPPTId;
  switch ( I2C_ID ) {
    case 'A': // LeftTRITStatusMessage
    case 'B': // RightTRITStatusMessage
      if ( I2C_ID == 'A' ) {
        TRITside = "Left";
      } else {
        TRITside = "Right";
      }
      Serial.print(TRITside + "TRITLimitFlags = ");
      printBits(rx_msg[0]);
      Serial.print(TRITside + "TRITErrorFlags = ");
      printBits(rx_msg[2]);
      Serial.print(TRITside + "TRITErrorFlags2 = ");
      printBits(rx_msg[3]);
      uint16_t activeMotor;
      memcpy( &activeMotor, rx_msg + 4, sizeof(uint16_t) );
      Serial.print(TRITside + "TRITActiveMotor = ");
      Serial.print(activeMotor, DEC);
      Serial.print(TRITside + "TRITErrorCountTx = ");
      Serial.print(rx_msg[6], DEC);
      Serial.print(TRITside + "TRITErrorCountRx = ");
      Serial.print(rx_msg[7], DEC);
      break;

    case 'C': // LeftTRITVelocityMessage
    case 'D': // RightTRITVelocityMessage
      if ( I2C_ID == 'C' ) {
        TRITside = "Left";
      } else {
        TRITside = "Right";
      }
      int32_t motorVelocity;
      memcpy( &motorVelocity, rx_msg, sizeof(int32_t) );
      Serial.print(TRITside + "TRITMotorVelocity = ");
      Serial.print(motorVelocity, DEC);
      int32_t vehicleVelocity;
      memcpy( &vehicleVelocity, rx_msg + 4, sizeof(int32_t) );
      Serial.print(TRITside + "TRITVehicleVelocity = ");
      Serial.print(vehicleVelocity, DEC);
      break;

    case 'E': // LeftTRITHeatAndMotorMessage
    case 'F': // RightTRITHeatAndMotorMessage
      if ( I2C_ID == 'E' ) {
        TRITside = "Left";
      } else {
        TRITside = "Right";
      }
      int32_t motorTemp;
      memcpy( &motorTemp, rx_msg, sizeof(int32_t) );
      Serial.print(TRITside + "TRITMotorTemp = ");
      Serial.println(motorTemp, DEC);
      int32_t heatsinkTemp;
      memcpy( &heatsinkTemp, rx_msg + 4, sizeof(int32_t) );
      Serial.print(TRITside + "TRITHeatsinkTemp = ");
      Serial.println(heatsinkTemp, DEC);
      break;

    case 'G': // LeftOdometerBusAhMessage
    case 'H': // RightOdometerBusAhMessage
      if ( I2C_ID == 'G' ) {
        TRITside = "Left";
      } else {
        TRITside = "Right";
      }
      uint32_t distance;
      memcpy( &distance, rx_msg, sizeof(uint32_t) );
      Serial.print(TRITside + "TRITOdometer = ");
      Serial.println(distance, DEC);
      uint32_t busTotalAh;
      memcpy( &busTotalAh, rx_msg + 4, sizeof(uint32_t) );
      Serial.print(TRITside + "TRITDCBusAh = ");
      Serial.println(busTotalAh, DEC);
      break;

    case 'I': // MPPT1OutputPowerMessage
    case 'J': // MPPT2OutputPowerMessage
    case 'K': // MPPT3OutputPowerMessage
      if ( I2C_ID == 'I' ) {
        MPPTId = "1";
      } else if ( I2C_ID == 'J' ) {
        MPPTId = "2";
      } else {
        MPPTId = "3";
      }
      float MPPTvout;
      memcpy( &MPPTvout, rx_msg, sizeof(float) );
      Serial.print("MPPT" + MPPTId + "OutputVoltage = ");
      Serial.println(MPPTvout);
      float MPPTiout;
      memcpy( &MPPTiout, rx_msg + 4, sizeof(float) );
      Serial.print("MPPT" + MPPTId + "OutputCurrent = ");
      Serial.println(MPPTiout);
      break;

    case 'L': // MPPT1StatusMessage
    case 'M': // MPPT2StatusMessage
    case 'N': // MPPT3StatusMessage
      if ( I2C_ID == 'L' ) {
        MPPTId = "1";
      } else if ( I2C_ID == 'M' ) {
        MPPTId = "2";
      } else {
        MPPTId = "3";
      }
      Serial.print("MPPT" + MPPTId + "CANRxErrorCounter = ");
      Serial.println(rx_msg[0], DEC);
      Serial.print("MPPT" + MPPTId + "CANTxErrorCounter = ");
      Serial.println(rx_msg[1], DEC);
      Serial.print("MPPT" + MPPTId + "CANTxOverflowCounter = ");
      Serial.println(rx_msg[2], DEC);
      Serial.print("MPPT" + MPPTId + "ErrorFlags = ");
      printBits(rx_msg[3]);
      Serial.print("MPPT" + MPPTId + "LimitFlags = ");
      printBits(rx_msg[4]);
      Serial.print("MPPT" + MPPTId + "Mode = ");
      Serial.println(rx_msg[5], DEC);
      break;

    case 'O': // BMSPackSOCMessage
      int SOCPercent;
      memcpy( &SOCPercent, rx_msg, sizeof(int) );
      Serial.print(rx_msg[0]);
      Serial.print("BMSSOCPercentage = ");
      Serial.println(SOCPercent);
      float SOCinAh;
      memcpy( &SOCinAh, rx_msg + 4, sizeof(float) );
      Serial.print("BMSSOCinAh = ");
      Serial.println(SOCinAh);
      break;

    case 'P': // BMSCellTempMessage
      uint16_t minCellTemp;
      memcpy( &minCellTemp, rx_msg, sizeof(uint16_t) );
      Serial.print("BMSMinCellTemp = ");
      Serial.println(minCellTemp);
      uint16_t maxCellTemp;
      memcpy( &maxCellTemp, rx_msg + 2, sizeof(uint16_t) );
      Serial.print("BMSMaxCellTemp = ");
      Serial.println(maxCellTemp);
      byte cellNumMinTemp;
      memcpy( &cellNumMinTemp, rx_msg + 4, sizeof(byte) );
      Serial.print("BMSCellNumMinTemp = ");
      Serial.println(cellNumMinTemp, DEC);
      byte cellNumMaxTemp;
      memcpy( &cellNumMaxTemp, rx_msg + 6, sizeof(byte) );
      Serial.print("BMSCellNumMaxTemp = ");
      Serial.println(cellNumMaxTemp, DEC);
      break;

    case 'Q': // BMSOutputPowerMessage
      uint32_t BMSvout;
      memcpy( &BMSvout, rx_msg, sizeof(uint32_t) );
      Serial.print("BMSOutputVoltage = ");
      Serial.println(BMSvout, DEC);
      int32_t BMSiout;
      memcpy( &BMSiout, rx_msg + 2, sizeof(int32_t) );
      Serial.print("BMSOutputCurrent = ");
      Serial.println(BMSvout, DEC);
      break;
      
    case 'R': // MOTECECUStatusMessage
      Serial.print("MoTeCECUStatus = ");
      printBits(rx_msg[0]);
      Serial.print("MoTeCECUStatus2 = ");
      printBits(rx_msg[1]);
      break;
  }
  Serial.println();
}

void setup() {
  // Init Serial Monitor
  Serial.begin(115200);

  // Set device as a Wi-Fi Station
  setupLRmode();

  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  }

  // Once ESPNow is successfully Init, we will register for Send CB to
  // get the status of Trasnmitted packet
  esp_now_register_send_cb(Onrx_msgSent);

  // Register peer
  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;
  peerInfo.encrypt = false;

  // Add peer
  if (esp_now_add_peer(&peerInfo) != ESP_OK) {
    Serial.println("Failed to add peer");
    return;
  }
  // Register for a callback function that will be called when rx_msg is received
  esp_now_register_recv_cb(Onrx_msgRecv);
}

void loop() {
  if ( Serial.available() ) { // Recieving data from chase car MATLAB
    Serial.println("Test");
    targetSpeed = Serial.read();
    // Send message via ESP-NOW
    esp_err_t result = esp_now_send( broadcastAddress, (uint8_t *) &targetSpeed, sizeof(targetSpeed) );
     
    if (result == ESP_OK) {
      Serial.println("Sent with success");
    }
    else {
      Serial.println("Error sending the data");
    }
  }
}

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

void printBits( int b ) {
  for ( int i = 7; i >= 0; i-- ) {
    Serial.print( bitRead(b, i) );
  }
  //Serial.println();
}
