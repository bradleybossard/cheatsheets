# install adb if not installed
# sudo apt install --yes android-tools-adb

# make sure developer mode is enabled on phone (click About Phone -> Build Number 9 times)
# enable USB debugging (System -> Developer options -> USB debugging)

# run the following to make sure phone is recognized
# adb devices -l

# chrome://inspect/#devices



# to pull tabs from chrome 
# make sure chrome is running on device
adb forward tcp:9222 localabstract:chrome_devtools_remote
wget -O tabs.json http://0.0.0.0:9222/json/list

# to pull tabs from brave 
# make sure brave is running on device
adb shell cat /proc/net/unix | grep chrome
# this will produce an entry like the following
# 0000000000000000: 00000003 00000000 00000000 0001 03 20845054 @chrome_devtools_remote_20338

# the 9229 came from looking at the open ports in chrome://inspect/#devices on the desktop
adb forward tcp:9229 localabstract:chrome_devtools_remote_20338
wget -O tabs.json http://0.0.0.0:9229/json/list


