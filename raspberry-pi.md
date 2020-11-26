#### Find all Raspberry Pis on the network

    sudo nmap -sP 192.168.0.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'  # 192.168.0.* is your local network mask

#### Updating firmware

    sudo apt-get install rpi-update
    sudo rpi-update

#### Turning on/off LED

    echo 9 > /sys/class/gpio/export               # Set up pin 9, change 9 to whatever number for a different pin
    echo out > /sys/class/gpio/gpio9/direction    # Set i/o direction for pin 9 to output
    echo 1 > /sys/class/gpio/gpio4/value          # Set pin voltage to high
    echo 0 > /sys/class/gpio/gpio4/value          # Set pin voltage to low

#### Auto-mounting an SMB drive at boot
    sudo apt install -y cifs-utils
    # Add the following 4 lines to your /etc/fstab to mount network partitions
    tmpfs /tmp  tmpfs nodev,nosuid,mode=1777  0 0
    //worldbook1.bossard.lan/Public4TB1 /mnt/worldbook1 cifs username=username,password=password 0 0
    //worldbook2.bossard.lan/Public4TB2 /mnt/worldbook2 cifs username=username,password=password 0 0
    //worldbook3.bossard.lan/tb3        /mnt/worldbook3 cifs username=username,password=password 0 0
    sudo mount -a   # Remount drives

#### Determine board version
```
cat /sys/firmware/devicetree/base/model
```

#### Get MAC address

    ifconfig eth0 | grep -Eo ..\(\:..\){5}  # Get eth0 MAC
    ifconfig wlan | grep -Eo ..\(\:..\){5}  # Get wlan MAC

#### Enable vncserver

    sudo apt-get update
    sudo apt-get install realvnc-vnc-server realvnc-vnc-viewer
    sudo systemctl start vncserver-x11-serviced.service   # Start vncserver now
    sudo systemctl enable vncserver-x11-serviced.service  # Start vncserver on subsequent reboots

#### Add wifi
```
ifconfig                                  # verify you have a wireless interface
sudo iwlist wlan0 scan | grep ESSID       # get a list of all networks you can see
sudo su
wpa_passphrase "ESSID" "password"  >> /etc/wpa_supplicant/wpa_supplicant.conf     # add encrypted password to config
ifconfig wlan0                            # verify wlan0 now has an ip address (inet field)
```
