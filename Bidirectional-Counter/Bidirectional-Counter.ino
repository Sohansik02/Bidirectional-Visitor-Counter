int irPin1=10;
int irPin2=12;
boolean sensor1=false;
boolean sensor2=false;
int cnt=0;
void setup() {

  // put your setup code here, to run once:
  Serial.begin(9600);
pinMode(irPin1, INPUT);
pinMode(irPin2, INPUT);

}

void loop() {
   
       if (!digitalRead(irPin2) && !sensor1){
     sensor2=true;
       delay(500);
     }
      else if (!digitalRead(irPin1) && sensor2){
        cnt--;
      sensor2=false;
        delay(500);
     }
     else if (!digitalRead(irPin1)){
     sensor1=true;
       delay(500);
  }
 else if (!digitalRead(irPin2) && sensor1){
      cnt++;
      sensor1=false;
      delay(500);
     }
     else{
        sensor1=false;
        sensor2=false;
          delay(500);
     }
        Serial.print("No. of people inside room: ");
       Serial.println(cnt);
    //  delay(1000);

  }
