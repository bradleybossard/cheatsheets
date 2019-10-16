 #!/bin/bash

#TODO
#  http://www.howtoforge.com/useful_linux_commands
#  http://www.danielmiessler.com/blog/collection-of-less-commonly-used-unix-commands
#  http://linoxide.com/guide/linux-command-shelf.html
#  http://www.pixelbeat.org/docs/linux_commands.html
#  http://www.pixelbeat.org/cmdline.html
#

function print_system_commands {
  echo '**  SYSTEM COMMANDS **'
  echo 'cal            -- Show ascii calendar for current month'
  echo 'cal -y         -- Show calendar for entire year'
  echo 'date           -- Show current date and time'
  echo 'finger <user>  -- Displays info about <user>'
  echo 'hostname       -- Show system host name'
  echo 'hostname i-    -- Show ip address'
  echo 'last reboot    -- Show system reboot history'
  echo 'uname -a       -- Display Linux system information'
  echo 'uname -r       -- Display Linux system information'
  echo 'uptime         -- Show how long the system has been running'
  echo 'w              -- Displays who is online'
  echo 'whoami         -- Displays current username'
  echo ''
}

function print_encryption_commands {
  echo 'gpg -c file   -- Encrypt file'
  echo 'gpg file.gpg  -- Decrypt file'
  echo ''
}
