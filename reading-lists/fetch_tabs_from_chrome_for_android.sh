adb forward tcp:9222 localabstract:chrome_devtools_remote
wget -O tabs.json http://0.0.0.0:9222/json/list
