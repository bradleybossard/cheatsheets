    netstat -tulpn                 #  Print ports in use by which process ids
    ls -l /proc/<process_id>/exe   #  Determine executable associated with process
    fuser <port>/<protocol>        #  Determine pid from port, protocol usually 'tcp' 

    dig <dns-name>                 #  DNS lookup
    
    traceroute
    host <hostname>                #  Trace route to host, i.e. www.google.com
    host <i.p>                     #  Trace route to IP address

    ip addr show                   #  Show all interfaces
    ip addr show <dev>             #  Show specific interface, like etho0
    ifconfig                       #  Configure network interface   (deprecated)
    iwconfig                       #  Configure wireless interface  (deprecated)

