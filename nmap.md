nmap -sV <ip>                   # Perform service version scan
nmap -oA <log basename> <ip>    # Save results to log files (all formats, gnmap, nmap, xml)

nmap -p <port> <ip>                       # Scan a specific port
nmap -p <start-port>-<end-port> <ip>      # Scan a specific port range

nmap 192.168.1.0/24        # Scan all ips according to CIDR notation
nmap <ip> <ip>             # Scan space-delimited list of ips
nmap -iL hosts.txt         # Scan hosts listed in a text file
nmap -iR <number>          # Scan <number> of random ips 
