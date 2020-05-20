```
arduino-cli core search uno             # search for cores for "uno"
arduino-cli core install arduino:avr    # install core "arduino:avr"

arduino-cli core list                   # verify install

arduino-cli board list                  # show currently connected boards

arduino-cli board listall               # show all currently supported boards based on downloaded cores

arduino-cli compile --fqbn arduino:avr:uno test1  # compile program for uno under test

# upload program to device, may need to change permission on device to upload
sudo chown bradleybossard /dev/ttyUSB0
arduino-cli upload --port /dev/ttyUSB0 --fqbn arduino:avr:uno test1
```

## add esp8266 support
```
#create a file arduino-cli.yaml with the following

board_manager:
  additional_urls:
    - http://arduino.esp8266.com/stable/package_esp8266com_index.json

```
then
```
arduino-cli core update-index
arduino-cli core search esp8266
arduino-cli core install esp8266:esp8266
arduino-cli core list
arduino-cli compile --fqbn esp8266:esp8266:nodemcuv2 test1
arduino-cli upload --port /dev/ttyUSB0 --fqbn esp8266:esp8266:nodemcuv2 test1
```
