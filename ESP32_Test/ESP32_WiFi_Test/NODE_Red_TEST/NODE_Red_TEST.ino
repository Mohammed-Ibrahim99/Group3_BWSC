void setup() {

  Serial.begin(9600);

}

void loop() {
  for (double i = 0; i <= 2 * M_PI; i += M_PI / 10)
  {
    Serial.println(sin(i));
  }

}
