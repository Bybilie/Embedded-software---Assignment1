//const int pwm = 5;
#define switch1 27
#define switch2 2
#define Led1 17
#define Led2 16 
//const int a = 0;
int b = 100;
const int  c = 13;
int  d = 4500;
int value1 = 0;
int value2 = 0;


void setup() {
  //pinMode(pwm, OUTPUT);
  pinMode(switch1, INPUT);
  pinMode(switch2, INPUT);
  pinMode(Led1, OUTPUT);
  pinMode(Led2, OUTPUT);
  
  
}

void loop() {
  value1 = digitalRead(switch1); //read the value of the first switch 
  value2 = digitalRead(switch2);
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
     else if(value2 == LOW){
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
    else if ( value2 == HIGH) 
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


