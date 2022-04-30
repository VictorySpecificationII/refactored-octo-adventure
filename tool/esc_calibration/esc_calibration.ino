#include <Servo.h>


//Specify external pins
int drivePin = D0;
Servo driveMotor;

//Serial Monitor Input
int sm_input;

void setup() {
  Serial.begin(115200); 
  delay(2000);  

  //Attach drive and turn motors
  driveMotor.attach(drivePin);
  Serial.println("                            ");
  Serial.println("==========REMEMBER==========");
  Serial.println("Input Range is 0 <= x <= 180");

  //Neutral the drive motor
  driveMotor.write(90);

}

void loop() {
  if(Serial.available()){
    sm_input = Serial.parseInt();
    Serial.print("You typed: " );
    Serial.println(sm_input);
    driveMotor.write(sm_input);
    delay(3000);
    driveMotor.write(180);
    
  }
}
