const int pwm = 5;
const int switch1 = 1;
const int switch2 = 3;
const int Led1 = 17;
const int Led2 = 16; 
//const int a = 0;
#define b = 100;
const int  c = 13;
int  d = 4500;


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

     else if ( value1 == LOW )
     {
      int a = 700;
      digitalWrite(Led2, HIGH);
      delayMicroseconds(a);
      digitalWrite(Led2, LOW);
      for (int x = 0; x < c; x++)
      {
        
      digitalWrite(Led1, HIGH);
      a = a+50;
      delayMicroseconds(a);
      digitalWrite(Led1, LOW);
      delayMicroseconds(b);
     
      
     }
     delayMicroseconds(d);
     }
     else if(switch2 == LOW){
      int a = 700;
      digitalWrite(Led2, HIGH);
      delayMicroseconds(a);
      digitalWrite(Led2, LOW);
      for (int x = 0; x < c; x++)
      {
        
      digitalWrite(Led1, HIGH);
      a = a+50;
      delayMicroseconds(a);
      digitalWrite(Led1, LOW);
      delayMicroseconds(b);
     }
     delayMicroseconds(d);
      
     }
    else if ( switch2 == HIGH) 
    {
      int a = 700;
      digitalWrite(Led2, HIGH);
      delayMicroseconds(a);
      digitalWrite(Led2, LOW);
      for (int x = 0; x < c +3; x++)
      {
        
      digitalWrite(Led1, HIGH);
      a = a+50;
      delayMicroseconds(a);
      digitalWrite(Led1, LOW);
      delayMicroseconds(b);
     
     
      
     }
     delayMicroseconds(d);
    }
} 


