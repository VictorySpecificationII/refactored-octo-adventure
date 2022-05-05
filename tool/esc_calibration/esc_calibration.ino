#include <Servo.h>


//Specify external pins
int drivePin = D0;
Servo driveMotor;

////Serial Monitor Input
////int sm_input;
byte sm_input;

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

//stable speed for testing only
int esc_sig_speed = 80;


void loop() {

//driveMotor.write(esc_sig_speed);

  while (Serial.available()){
    int val= Serial.parseInt();
    if(val == 0){//Serial.available returns 0 so we can't use 0 for full throttle,use 1 instead
      continue;
    }
    else{
    Serial.println(val);
    driveMotor.write(val);
    }
  }
}
//sto 80 trava 0.7A
//sto 60 trava 3 kommaan kati A
//===============================================================================//
