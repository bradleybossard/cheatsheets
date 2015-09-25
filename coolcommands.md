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

function print_inet_commands {
  echo '**  INTERNET COMMANDS **'
  echo 'nmap                     -- Network exploration tool'
  echo 'nmap -sP 192.168.1.*     -- List all active IPs on local network subdomain 192.168.1.*'
  echo ''
}

function print_encryption_commands {
  echo 'gpg -c file   -- Encrypt file'
  echo 'gpg file.gpg  -- Decrypt file'
  echo ''
}

function print_text_commands {
  echo '**  TEXT COMMANDS **'
  echo 'jot            -- Generation list of numbers or characters'
  echo 'jot 10         -- List numbers 1 to 10'
  echo 'jot -r 10      -- List 10 random numbers' 
  echo ''
}

function print_hardware_commands {
  echo '**  HARDWARE COMMANDS **'
  echo '' 
}

function print_disk_commands {
  echo '**  DISK COMMANDS **'
  echo 'df        -- Print disk space used and available on filesystems'
  echo 'du        -- Print disk usage'
  echo 'du -h     -- Human readable disk usage'
  echo ''
}

function print_git_commands {
  echo '**  GIT COMMANDS **'
  # http://gitready.com/advanced/2009/01/20/bend-logs-to-your-will.html
  # http://www.andyjeffries.co.uk/25-tips-for-intermediate-git-users/
  echo ''
}

function print_mac_shortcuts {
  echo '**  MAC SHORTCUTS **'
  echo 'Ctrl-Shift-CMD-3 or 4  -- Take a snapshot directly to clipboard'
  #http://mattgemmell.com/mac-keyboard-shortcuts/
  echo ''
}


function print_web_shortcuts {
  echo '**  WEB SHORTCUTS **'
  echo 'wget -m -k -K -E http://url/of/web/site -- Archive an entire site offline'
  echo ''
}

function print_imagemagick_shortcuts {
  echo '** IMAGEMAGICK SHORTCUTS **'
  echo 'convert   -delay 20   -loop 0   sphere*.gif   animatespheres.gif -- Create an animated GIF'
  echo ''
}

function print_gifsicle_shortcuts {
  echo '** GIFSICLE SHORTCUTS **'
  echo 'gifsicle input.gif --scale 0.7 > output.gif  -- Scale GIF'
}

function print_ffmpeg_shortcuts {
  echo 'ffmpeg -i input.flv -vf scale=320:-1 -t 10 -r 10 output.gif'
}

function print_tmux_shortcuts {
  echo 'scroll   - ctrl+a ['
  echo ''
}

function cool {
  print_system_commands 
  print_hardware_commands 
  print_disk_commands 
  print_inet_commands
  print_encryption_commands 
  print_text_commands
  print_hardware_commands
  print_disk_commands
  print_git_commands
  print_mac_shortcuts
  print_web_shortcuts
  print_imagemagick_shortcuts
  print_gifsicle_shortcuts 
  print_tmux_shortcuts
  print_ffmpeg_shortcuts
}
