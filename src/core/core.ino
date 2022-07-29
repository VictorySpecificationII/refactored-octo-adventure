#include <Arduino.h>
#ifdef ESP32
  #include <WiFi.h>
  #include <AsyncTCP.h>
#else
  #include <ESP8266WiFi.h>
  #include <ESPAsyncTCP.h>
#endif
#include <ESPAsyncWebServer.h>



#include <Servo.h>
#include "HCPCA9685.h"
#include <Wire.h> //include Wire.h library


/* I2C slave address for the device/module. For the HCMODU0097 the default I2C address
   is 0x40 */
#define  I2CAdd 0x40
 


AsyncWebServer server(80);

// REPLACE WITH YOUR NETWORK CREDENTIALS
const char* ssid = "To Hani Living";
const char* password = "welcometohani";

const char* PARAM_INPUT_1 = "input1";//thr
const char* PARAM_INPUT_2 = "input2";//brk
const char* PARAM_INPUT_3 = "input3";//str
const char* PARAM_INPUT_4 = "input4";//aef
const char* PARAM_INPUT_5 = "input5";//aer

//globals to be used for high level control
int thr;
int brk;
int str;
int aef;
int aer;

 
/* Create an instance of the library */
HCPCA9685 HCPCA9685(I2CAdd);


//Specify external pins
int drivePin = D0;
Servo driveMotor;


// HTML web page to handle 3 input fields (input1, input2, input3)

const char index_html[] PROGMEM = R"rawliteral(
<!DOCTYPE HTML><html><head>
  <title>ESP Input Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  </head><body>
  <form action="/get">
    input1(Throttle): <input type="text" name="input1">
    <input type="submit" value="Submit">
  </form><br>
  <form action="/get">
    input2(Brake): <input type="text" name="input2">
    <input type="submit" value="Submit">
  </form><br>
  <form action="/get">
    input3(Steering): <input type="text" name="input3">
    <input type="submit" value="Submit">
  </form><br>
  <form action="/get">
    input4(Front Aero): <input type="text" name="input4">
    <input type="submit" value="Submit">
  </form><br>
  <form action="/get">
    input5(Rear Aero): <input type="text" name="input5">
    <input type="submit" value="Submit">
  </form><br>
</body></html>)rawliteral";

void notFound(AsyncWebServerRequest *request) {
  request->send(404, "text/plain", "Not found");
}

void setup() {
  Serial.begin(115200);
  delay(2000);

  //Attach drive and turn motors
  driveMotor.attach(drivePin);

  //Neutral the drive motor
  driveMotor.write(90);

  /* Initialise the library and set it to 'servo mode' */ 
  HCPCA9685.Init(SERVO_MODE);
 
  /* Wake the device up */
  HCPCA9685.Sleep(false);


  /*Initializing WiFi Component*/
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  if (WiFi.waitForConnectResult() != WL_CONNECTED) {
    Serial.println("WiFi Failed!");
    return;
  }
  Serial.println();
  Serial.print("IP Address: ");
  Serial.println(WiFi.localIP());

  handleClient();

}






void loop() {


}

void handleClient(){


    // Send web page with input fields to client
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send_P(200, "text/html", index_html);
  });
  
  // Send a GET request to <ESP_IP>/get?input1=<inputMessage>
  server.on("/get", HTTP_GET, [] (AsyncWebServerRequest *request) {
    String inputMessage;
    String inputParam;
    // GET input1 value on <ESP_IP>/get?input1=<inputMessage>
    if (request->hasParam(PARAM_INPUT_1)) {
      inputMessage = request->getParam(PARAM_INPUT_1)->value();
      inputParam = PARAM_INPUT_1;
      thr=inputMessage.toInt();
      Serial.print("Throttle Value is:");
      Serial.println(thr);
      throttleControlFct(thr);

    }
    // GET input2 value on <ESP_IP>/get?input2=<inputMessage>
    else if (request->hasParam(PARAM_INPUT_2)) {
      inputMessage = request->getParam(PARAM_INPUT_2)->value();
      inputParam = PARAM_INPUT_2;
      brk=inputMessage.toInt();
      Serial.print("Brake Value is:");
      Serial.println(brk);
      brakeControlFct(brk);
    }
    // GET input3 value on <ESP_IP>/get?input3=<inputMessage>
    else if (request->hasParam(PARAM_INPUT_3)) {
      inputMessage = request->getParam(PARAM_INPUT_3)->value();
      inputParam = PARAM_INPUT_3;
      str=inputMessage.toInt();
      Serial.print("Steering Value is:");
      Serial.println(str);
      steerControlFct(str);
    }
    // GET input4 value on <ESP_IP>/get?input4=<inputMessage>
    else if (request->hasParam(PARAM_INPUT_4)) {
      inputMessage = request->getParam(PARAM_INPUT_4)->value();
      inputParam = PARAM_INPUT_4;
      aef=inputMessage.toInt();
      Serial.print("Front Aero Value is:");
      Serial.println(aef);
      frontaeroControlFct(aef);
    }
    // GET input5 value on <ESP_IP>/get?input5=<inputMessage>
    else if (request->hasParam(PARAM_INPUT_5)) {
      inputMessage = request->getParam(PARAM_INPUT_5)->value();
      inputParam = PARAM_INPUT_5;
      aer=inputMessage.toInt();
      Serial.print("Rear Aero Value is:");
      Serial.println(aer);
      rearaeroControlFct(aer);
    }
    else {
      inputMessage = "No message sent";
      inputParam = "none";
    }
    //Serial.println(inputMessage);
    request->send(200, "text/html", "HTTP GET request sent to your ESP on input field (" 
                                     + inputParam + ") with value: " + inputMessage +
                                     "<br><a href=\"/\">Return to Home Page</a>");
  });

  server.onNotFound(notFound);
  server.begin();
  
}

void throttleControlFct(int value){

    int val = value;
    if(val == 0){//Serial.available returns 0 so we can't use 0 for full throttle,use 1 instead
      //continue;
      val = 90; //stop the powertrain
    }
    else{
    //Serial.println(val);
    driveMotor.write(val);
    }
}

void brakeControlFct(int value){
  int val = value;
  int currentSpeed = driveMotor.read();
  driveMotor.write(currentSpeed + val);
}

void steerControlFct(int value){

  int val = value;            // reads the value of the potentiometer (value between 0 and 1023)
  val = map(val, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180)
  HCPCA9685.Servo(2, val);//myservo.write(val);                  // sets the servo position according to the scaled value
  delay(15);  

  //HCPCA9685.Servo(3, Pos);//aef
  //HCPCA9685.Servo(2, Pos);//steering
  //HCPCA9685.Servo(1, Pos);//aer
  //HCPCA9685.Servo(0, Pos);//fan
}

void frontaeroControlFct(int value){
  
  int val = value;            // reads the value of the potentiometer (value between 0 and 1023)
  val = map(val, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180)
  HCPCA9685.Servo(3, val);//myservo.write(val);                  // sets the servo position according to the scaled value
  delay(15);  

  //HCPCA9685.Servo(3, Pos);//aef
  //HCPCA9685.Servo(2, Pos);//steering
  //HCPCA9685.Servo(1, Pos);//aer
  //HCPCA9685.Servo(0, Pos);//fan
}

void rearaeroControlFct(int value){
  
  int val = value;            // reads the value of the potentiometer (value between 0 and 1023)
  val = map(val, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180)
  HCPCA9685.Servo(1, val);//myservo.write(val);                  // sets the servo position according to the scaled value
  delay(15);  

  //HCPCA9685.Servo(3, Pos);//aef
  //HCPCA9685.Servo(2, Pos);//steering
  //HCPCA9685.Servo(1, Pos);//aer
  //HCPCA9685.Servo(0, Pos);//fan
}
