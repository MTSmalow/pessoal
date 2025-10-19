// C++ code
//

int led=LOW;
  
void setup()
{
  pinMode(2,INPUT);
  pinMode(4,OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  int botao=digitalRead(2);
  Serial.println(botao);
  if(botao == 0){
    if(led==LOW){
      	led=HIGH;
    }
    else{
      led=LOW;
    }
    digitalWrite(4,led);
    while(digitalRead(2) == 0) {
      	delay(10);
    }
  }  
}