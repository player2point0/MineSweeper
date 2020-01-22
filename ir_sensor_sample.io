#define IR_PIN A0; //sensor signal pin is connected to pin0.

void setup() {
  pinMode(IR_PIN, INPUT);//sensor signal pin declared as INPUT
  Serial.begin(9600);
}

void loop() {
  double brightness_value = analogRead(IR_PIN);
  //Serial.println(brightness_value);
  
  if(brightness_value >= 980.00){ //980 was a value picked, but tbis could be lower to stay on the safe side if in a bright environment
   Serial.println("BLACK");
   delay(200);  
  }
 else {
   Serial.println("BOARD"); 
   delay(200);
  }
}
