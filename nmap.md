nmap -sV <ip>                   # Perform service version scan
nmap -oA <log basename> <ip>    # Save results to log files (all formats, gnmap, nmap, xml)

nmap -p <port> <ip>                       # Scan a specific port
nmap -p <start-port>-<end-port> <ip>      # Scan a specific port range
