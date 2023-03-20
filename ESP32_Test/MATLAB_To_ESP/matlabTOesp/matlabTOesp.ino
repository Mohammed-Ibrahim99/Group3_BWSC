char incomingByte = 0;   // for incoming serial data

void setup() {
  Serial.begin(9600);     // opens serial port, sets data rate to 9600 bps

  pinMode(LED_BUILTIN, OUTPUT); //use built in led to check for received matlab data
}

void loop() {

  // send data only when you receive data:
  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();

    // say what you got:
    //Serial.print("I received: ");
    Serial.print(incomingByte);

    //Use built in LED to check if data is received as serial port is already used by MATLAB
    //if incoming byte is integer data will be read in as ASCII Characters 83 is equivalent to 'S' first letter
    //of speed. if incoming byte is char data will be displayed in characters.
    if (incomingByte == 83)
    {
      digitalWrite(LED_BUILTIN, HIGH);
    }

  }
}
