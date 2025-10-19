// C++ code
//sensor de temeratura

void setup()
{
  	pinMode(2, OUTPUT);
  	pinMode(4, OUTPUT);
	Serial.begin(9600);
}

void loop()
{
  int valor=analogRead(A5);
  int temp = map(valor,20,358,-40,125);
  
  if(temp<=15){
    digitalWrite(2, HIGH);
  }
  else{
    digitalWrite(2, LOW);
  }
    if(temp>=30){
    digitalWrite(4, HIGH);
  }
  else{
    digitalWrite(4, LOW);
  }
    
  Serial.println(valor);
  Serial.println("temp:");
  Serial.println(temp);
  delay(1000);
}