
//setting the pin number for the led and the switch 

#define switch1 23   
#define switch2 22
#define Led1 8
#define Led2 9 

//setting the value of the switch buttons to be integers which could be changed 
int value1 = 0;
int value2 = 0;
int newpulse = 1400; // The width of the last pulse of the block

// setting the previously defined pins as either input or outputs 
void setup() {
  pinMode(switch1, INPUT);
  pinMode(switch2, INPUT);
  pinMode(Led1, OUTPUT);
  pinMode(Led2, OUTPUT);
  

}

// parameter which are used in the code;
// a = This is the width of the first pulse and is calculated as 700microseconds 
// b = This is the widthe of the space between pulses and all the spaces being the same 
// c = This is the number of pulses in a block which is given as 13 
// d = This is the space between each pulse block which has been calculated as 4500 microseconds 

void loop() {
     value1 = digitalRead(switch1); //read the value of the first switch 
     value2 = digitalRead(switch2); // read the value of the second switch 
   if (value1 == HIGH)             // if the value of the first switch is high then the LED's are to remain off 
      {
       digitalWrite(Led1, LOW);
       digitalWrite(Led2, LOW);
      }

     else if ( value1 == LOW and value2 == LOW) // if however the value of both switches are low then pulses are to be sent which are normal modes 
     {
      
      digitalWrite(Led2, HIGH);  // The first signal is sent which is the signalB 
      delayMicroseconds(700);   // The width of the pulse is inline with the 'a' value which has been calculated 
      digitalWrite(Led2, LOW);  // This signifies the end of the signal B pulse 
      digitalWrite(Led1, HIGH); // This begins the first pulse of signal A 
      delayMicroseconds(750); //  The width of this pulse is a 50 microsecond increase from the previous and this increment is constant till the end of the pulse block 
      digitalWrite(Led1, LOW); // end of the first pulse 
      delayMicroseconds(100); // This delay('b') is to denote the breaks between  the pulses
      digitalWrite(Led1, HIGH); //2nd pulse 
      delayMicroseconds(800);; // width increment 
      digitalWrite(Led1, LOW); 
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //3rd  pulse 
      delayMicroseconds(850);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //4th pulse 
      delayMicroseconds(900);
      digitalWrite(Led1, LOW);
      digitalWrite(Led1, HIGH); //5th pulse 
      delayMicroseconds(950);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //6th pulse 
      delayMicroseconds(1000);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //7th pulse 
      delayMicroseconds(1050);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //8th  pulse 
      delayMicroseconds(1100);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //9th pulse 
      delayMicroseconds(1150);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //10th pulse 
      delayMicroseconds(1200);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //11th pulse 
      delayMicroseconds(1300);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //12th pulse
      delayMicroseconds(1350);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //13th pulse - this is the number of pulses in the block 
      delayMicroseconds(1400);
      digitalWrite(Led1, LOW); //The end of the pulse blocks 
      delayMicroseconds(100);
      
      delay(4600); // A time delay of 'd' which denotes the space between pulse blocks 
      
     }
     
    else if (value1 == LOW and value2 == HIGH) // when the value of  switch1 is low but the value of switch2 is high, the first instance is similar to the one implemented in the previous 
    // However, before 'd' is implemented, 3 new pulse are added 
    {
    // 
      digitalWrite(Led2, HIGH); // signalB pulse 
      delayMicroseconds(700);
      digitalWrite(Led2, LOW);
      digitalWrite(Led1, HIGH); // 1st 
      delayMicroseconds(750);
      digitalWrite(Led1, LOW); 
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //2nd 
      delayMicroseconds(800);;
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //3rd 
      delayMicroseconds(850);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //4th 
      delayMicroseconds(900);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //5th 
      delayMicroseconds(950);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //6th 
      delayMicroseconds(1000);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //7th 
      delayMicroseconds(1050);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //8th 
      delayMicroseconds(1100);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //9th 
      delayMicroseconds(1150);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //10th 
      delayMicroseconds(1200);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //11th 
      delayMicroseconds(1300);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //12th 
      delayMicroseconds(1350);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
      digitalWrite(Led1, HIGH); //13th 
      delayMicroseconds(1400);
      digitalWrite(Led1, LOW);
      delayMicroseconds(100);
    for (int x = 0; x < 3; x++) // Three new pulses introduced 
      {
        newpulse = newpulse + 50;  // for every iteration for the pulse, 50 is added to keep inline with the previous width increment

         digitalWrite(Led1, HIGH);
         delayMicroseconds(newpulse);
         digitalWrite(Led1, LOW);
         delayMicroseconds(100);
         newpulse = newpulse; // This stores the value of the pulsewidth after each iteration 
         
         
      }
     delayMicroseconds(4500);  // 'd' is implemented 
    }
}
