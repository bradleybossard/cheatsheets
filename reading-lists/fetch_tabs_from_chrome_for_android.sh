# make sure developer mode is enabled on phone
# run the following to make sure phone is recognized
# adb devices -l
# chrome://inspect/#devices

adb forward tcp:9222 localabstract:chrome_devtools_remote
wget -O tabs.json http://0.0.0.0:9222/json/list
