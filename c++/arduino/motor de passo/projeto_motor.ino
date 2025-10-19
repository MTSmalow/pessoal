// C++ code
//motor de passo
int motor = 3;
int potencia = 0;


void setup()
{
  pinMode(motor, OUTPUT);
}

void loop()
{
  analogWrite(motor, potencia);
  potencia+=10;
  delay(300);
  if(potencia > 1023){
   potencia = 0;
  }
  
}