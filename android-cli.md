```
emulator -list-avds    # List available emulators
android list avd       # List available emulators

emulator -avd <emulator-name> -http-proxy <charles-host-ip>:8888  # proxy emulator through charles

adb devices                                  # list devices
adb -s <device-name> install <path/to/apk>   # install apk to device
```
