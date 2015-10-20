### List DNS servers for a domain.com

   nslookup -type=ns [domain.com]

### Ask NS for domain.com IP (bypassing local cache) 

    nslookup [domain.com] [ns server]

### Check what local cache says IP is

    nslookup [domain.com]

### See debug information like TTL, etc

    nslookup -debug [domain.com]

### Clear DNS cache (Linux)

    sudo apt-get install nscd
    sudo /etc/init.d/nscd restart

### Clear DNS cache (OSX)

    sudo killall -HUP mDNSResponder

### Clear DNS cache (Windows)

    ipconfig /flushdns
