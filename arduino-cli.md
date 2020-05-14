```
arduino-cli core search uno             # search for cores for "uno"
arduino-cli core install arduino:avr    # install core "arduino:avr"

arduino-cli core list                   # verify install

arduino-cli compile --fqbn arduino:avr:uno test1  # compile program for uno under test

# upload program to device, may need to change permission on device to upload
sudo chown bradleybossard /dev/ttyUSB0
arduino-cli upload --port /dev/ttyUSB0 --fqbn arduino:avr:uno test1
```
