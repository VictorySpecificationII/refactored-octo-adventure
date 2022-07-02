#include <Servo.h>
#include "HCPCA9685.h"
#include <Wire.h> //include Wire.h library


/* I2C slave address for the device/module. For the HCMODU0097 the default I2C address
   is 0x40 */
#define  I2CAdd 0x40
 
 
/* Create an instance of the library */
HCPCA9685 HCPCA9685(I2CAdd);



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

  /* Initialise the library and set it to 'servo mode' */ 
  HCPCA9685.Init(SERVO_MODE);
 
  /* Wake the device up */
  HCPCA9685.Sleep(false);


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




  unsigned int Pos;
 
  /* Sweep the servo back and forth from its minimum to maximum position.
     If your servo is hitting its end stops then you  should adjust the 
     values so that the servo can sweep though its full range without hitting
     the end stops. You can adjust the min & max positions by altering 
     the trim values in the libraries HCPCA9685.h file*/
  for(Pos = 10; Pos < 300; Pos++)
  {
    /* This function sets the servos position. It takes two parameters, 
     * the first is the servo to control, and the second is the servo 
     * position. */
    HCPCA9685.Servo(3, Pos);
    HCPCA9685.Servo(2, Pos);
    HCPCA9685.Servo(1, Pos);
    HCPCA9685.Servo(0, Pos);
    delay(10);
  }
  
  for(Pos = 300; Pos >= 10; Pos--)
  {
    HCPCA9685.Servo(0, Pos);
    HCPCA9685.Servo(1, Pos);
    HCPCA9685.Servo(2, Pos);
    HCPCA9685.Servo(3, Pos);
    delay(10);
  }



}
//sto 80 trava 0.7A
//sto 60 trava 3 kommaan kati A
//===============================================================================//
