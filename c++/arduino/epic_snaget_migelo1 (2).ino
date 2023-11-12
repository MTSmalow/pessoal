// C++ code
//
int tempo = 0;

int intensidade = 0;

int i = 0;

void setup()
{
  pinMode(4, INPUT);
  pinMode(11, OUTPUT);
  pinMode(3, INPUT);
  pinMode(10, OUTPUT);
}

void loop()
{
  if (digitalRead(4) == HIGH) {
    digitalWrite(11, HIGH);
  } else {
    digitalWrite(11, LOW);
  }
  if (digitalRead(3) == HIGH) {
    digitalWrite(10, HIGH);
  } else {
    digitalWrite(10, LOW);
  }
  delay(10); // Delay a little bit to improve simulation performance
}