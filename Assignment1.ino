const int pwm = 5;
const int switch1 = 1;
const int switch2 = 3;
const int Led1 = 17;
const int Led2 = 16; 

 




void setup() {
  pinMode(pwm, OUTPUT);
  pinMode(switch1, INPUT);
  pinMode(switch2, INPUT);
  pinMode(Led1, OUTPUT);
  pinMode(Led2, OUTPUT);
  

}

void loop() {
    int value1 = digitalRead(switch1); //read the value of the first switch 
    int value2 = digitalRead(switch2);
   if (value1 = HIGH)             // if the value of the switch is high then all the led should be turned off
      {
       digitalWrite(Led1, LOW);
       digitalWrite(Led2, LOW);
      }

     else if ( value1 == LOW and value2 == LOW)
     {
      for (int x = 0; x < 13; x++)
      {
      digitalWrite(Led2, HIGH);
      delay(700);
      digitalWrite(Led2, LOW);
      digitalWrite(Led1, HIGH);
      delay(750);
      digitalWrite(Led1, LOW);
      delay(100);
      digitalWrite(Led1, HIGH);
      delay(800);
      digitalWrite(Led1, LOW);
      delay(100);
      digitalWrite(Led1, HIGH);
      delay(850);
      digitalWrite(Led1, LOW);
      delay(4600);
      
     }
     }
    else if (value1 == LOW and value2 == HIGH)
    {
       for (int x = 0; x < 13; x++)
      {
      digitalWrite(Led2, HIGH);
      delay(700);
      digitalWrite(Led2, LOW);
      digitalWrite(Led1, HIGH);
      delay(750);
      digitalWrite(Led2, LOW);
      digitalWrite(Led2, HIGH);
      digitalWrite(Led1, LOW);
      delay(100);
      digitalWrite(Led2, HIGH);
      digitalWrite(Led1, HIGH);
      delay(800);
      digitalWrite(Led1, LOW);
      delay(100);
      digitalWrite(Led2, LOW);
      digitalWrite(Led1, HIGH);
      delay(850);
      digitalWrite(Led1, LOW);
      delay(4600);
    }
    }
}
