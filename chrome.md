### Chrome for Android

#### Export all open tabs
```
adb forward tcp:9222 localabstract:chrome_devtools_remote
wget -O tabs.json http://localhost:9222/json/list
```
