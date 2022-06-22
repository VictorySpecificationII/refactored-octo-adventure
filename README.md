# refactored-octo-adventure
RC Car Project - Arduino and Jetson Nano

Heavily inspired by: https://github.com/UvinduW/RCAutopilot

If you are using a NodeMCU v3, follow this link prior to doing any work: http://www.whatimade.today/flashing-the-nodemcu-firmware-on-the-esp8266-linux-guide/

## Wiring

Picture Pending


## Software Environment

Inside KiCAD, click on Preferences -> Manage Symbol Libraries, add an entry and point directly to the git repo folder location, to the file rccar-rescue.lib - file will be updated as project moves on - new symbols added so do it this way to avoid manually updating your libs.

For Linux/Windows, install the CH340 driver so you can communicate with the NodeMCUv3 through the Arduino IDE

For Arduino IDE, go to File -> Preferences, and paste the following links to the "Additional Boards Manager URL:

 - https://raw.githubusercontent.com/sparkfun/Arduino_Boards/master/IDE_Board_Manager/package_sparkfun_index.json i.e Extra Arduino Boards
 - https://arduino.esp8266.com/stable/package_esp8266com_index.json: Some extra arduino boards i.e NodeMCU boards


## Folder structure

### tool
 - esc_calibration: Adruino sketch that allows you to calibrate your ESC using the serial monitor.
 - i2c-tester: Arduino test that checks i2c connectivity to components and prints out a message.
 - steering-test: Arduino sketch that is used to verify steering for the car.
### doc
#### electrical_schematics
 - main.pdf: Main electrical schematic - all systems
 - rccar.sch
#### manuals
 - 45057ml-801-efb9.pdf: Tamiya TBLE-02S ESC Manual

### lib
#### arduino-ide
 - HCPCA9865.zip: PCA9865 library
#### kicad
 - rccar-rescue.dcm KiCad File
 - rccar-rescue.lib: KiCad Symbols library - NodeMCU, Arduino Nano, TBLE-02S
 - rccar-cache.lib: KiCad File
 - rccar.sch KiCad: Main schematic
 - rccar.kicad_pcb: PCB file
 - rccar.pro - KiCad project file

## Assembly

 - Upload esc_calibration to the NodeMCUv3 and use the Serial Monitor to test your connections, instructions in the program.
 - Upload steering_test to the Nano and simply power it up to test your connections to the servos.
 - For any i2c work, use the i2c_tester sketch to test your i2c connectivity.
