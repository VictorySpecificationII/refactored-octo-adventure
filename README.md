# refactored-octo-adventure
RC Car Project - Arduino and Jetson Nano

Heavily inspired by: https://github.com/UvinduW/RCAutopilot

If you are using a NodeMCU v3, follow this link prior to doing any work: http://www.whatimade.today/flashing-the-nodemcu-firmware-on-the-esp8266-linux-guide/

## Wiring
 - ESC Signal: D0
 - ESC Gnd :   GND on NodeMCU v3
 - ESC Vcc :   VIN on NodeMCU v3

## Folder structure

### tool
 - esc_calibration: Adruino sketch that allows you to calibrate your ESC using the serial monitor.
 - i2c-tester: Arduino test that checks i2c connectivity to components and prints out a message.
 - steering-test: Arduino sketch that is used to verify steering for the car.
### doc
 - 45057ml-801-efb9.pdf: Tamiya TBLE-02S ESC Manual

### lib
 - HCPCA9865.zip: PCA9865 library
