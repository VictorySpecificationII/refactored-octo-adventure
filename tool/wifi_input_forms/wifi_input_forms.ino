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
 
 
/* Create an instance of the library */
HCPCA9685 HCPCA9685(I2CAdd);



//Specify external pins
int drivePin = D0;
Servo driveMotor;



AsyncWebServer server(80);

const char* ssid = "To Hani Living";
const char* password = "welcometohani";

const char* input_throttle = "input_integer";
const char* input_brake = "input_integer";
const char* input_steering = "input_integer";
const char* input_aero_f = "input_integer";
const char* input_aero_r = "input_integer";


//server ui
const char index_html[] PROGMEM = R"rawliteral(
<!DOCTYPE HTML><html><head>
  <title>refactored-octo-adventure UI</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    html {font-family: Times New Roman; display: inline-block; text-align: center;}
    h2 {font-size: 3.0rem; color: #FF0000;}
  </style>
  </head><body>
  <h2>refactored-octo-adventure | Main Controller UI</h2> 
    <form action="/get">
    Throttle | Integer | Input Range: 0 < x < 180 : <input type="text" name="input_integer">
    <input type="submit" value="Submit">
  </form><br>
    </form>
    <form action="/get">
    Brake | Integer | Input Range: 0 < x < 90 : <input type="text" name="input_integer">
    <input type="submit" value="Submit">
  </form><br>
    </form>
    <form action="/get">
    Steering | Integer | Input Range: -180 < x < 180 : <input type="text" name="input_integer">
    <input type="submit" value="Submit">
  </form><br>
    </form>
    <form action="/get">
    Front Aero | Integer | Input Range: -45 < x < 45 : <input type="text" name="input_integer">
    <input type="submit" value="Submit">
  </form><br>
    </form>
    <form action="/get">
    Rear Aero | Integer | Input Range: -45 < x < 45 : <input type="text" name="input_integer">
    <input type="submit" value="Submit">
  </form><br>
</body></html>)rawliteral";

void notFound(AsyncWebServerRequest *request) {
  request->send(404, "text/plain", "Not found");
}

void setup() {
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  if (WiFi.waitForConnectResult() != WL_CONNECTED) {
    Serial.println("Connecting...");
    return;
  }
  Serial.println();
  Serial.print("IP Address: ");
  Serial.println(WiFi.localIP());



  delay(2000);

  //Attach drive and turn motors
  driveMotor.attach(drivePin);
  Serial.println("                                     ");
  Serial.println("=================REMEMBER===============");
  Serial.println("Throttle Input Range is 0 <= x <= 180");
  Serial.println("Brake Input Range is 0 <= x <= 90");

  //Neutral the drive motor
  driveMotor.write(90);

  /* Initialise the library and set it to 'servo mode' */ 
  HCPCA9685.Init(SERVO_MODE);

  Serial.println("                                        ");
  Serial.println("=================REMEMBER===============");
  Serial.println("Steering Input Range is -180 <= x <= 180");

  Serial.println("                                        ");
  Serial.println("=================REMEMBER===============");
  Serial.println("Front Aero Input Range is -45 <= x <= 45");
  Serial.println("Rear Aero Input Range is -45 <= x <= 45");
 
  /* Wake the device up */
  HCPCA9685.Sleep(false);


  //create server
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send_P(200, "text/html", index_html);
  });
  //process input from server
  server.on("/get", HTTP_GET, [] (AsyncWebServerRequest *request) {
    String input_message;
    String input_parameter;
    
    if (request->hasParam(input_throttle)) {
      input_message = request->getParam(input_throttle)->value();
      input_parameter = input_throttle;
     
    }

    else if (request->hasParam(input_brake)) {
      input_message = request->getParam(input_brake)->value();
      input_parameter = input_brake;
    }

    else if (request->hasParam(input_steering)) {
      input_message = request->getParam(input_steering)->value();
      input_parameter = input_steering;
    }

    else if (request->hasParam(input_aero_f)) {
      input_message = request->getParam(input_aero_f)->value();
      input_parameter = input_aero_f;
    }

    else if (request->hasParam(input_aero_r)) {
      input_message = request->getParam(input_aero_r)->value();
      input_parameter = input_aero_r;
    }
    else {
      input_message = "No message sent";
      input_parameter = "none";
    }
    Serial.print("Value is: ");
    Serial.println(input_message);
    request->send(200, "text/html", "HTTP GET request sent to your ESP on input field ("+ input_parameter + ") with value: " + input_message + "<br><a href=\"/\">Return to Home Page</a>");
    driveMotor.write(input_message.toInt());   

    
  });
  server.onNotFound(notFound);
  server.begin();
}

void loop() {



}
