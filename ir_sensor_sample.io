#define IR_PIN A0;//sensor signal pin is connected to pin2.
void setup() {
  pinMode(IR_PIN,INPUT);//sensor signal pin declared as INPUT
  Serial.begin(9600);
}
void loop() {
  double val = analogRead(tracking_sensor_pin);
  //Serial.println(val);
  if(val >= 980.00){
   Serial.println("BLACK");
   delay(200);  
  }
 else {
   Serial.println("Board"); 
   delay(200);
  }
}
