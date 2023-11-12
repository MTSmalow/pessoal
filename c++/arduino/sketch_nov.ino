void setup() {
  pinMode(13, OUTPUT);//acende o led especificado pelo numero
  pinMode(12, OUTPUT);
  pinMode(8, OUTPUT);
}

void loop() {
  digitalWrite(13, HIGH);//faz que o led acenda
  delay(1000);//especifica o tempo em que oled ficara ligado
  digitalWrite(13, LOW);//faz que o led apague
  delay(1000);//especifica o tempo em que oled ficara apagado
  digitalWrite(12, HIGH);
  delay(1000);
  digitalWrite(12, LOW);
  delay(1000);
  digitalWrite(8, HIGH);
  delay(1000);
  digitalWrite(8, LOW);
  delay(1000);
}
