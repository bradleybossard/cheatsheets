# nginx cheatsheet

### System control

```
sudo nginx -t                 # Test configuration
sudo systemctl reload nginx   # Restart nginx
```

### nginx conf cookbook

#### Create a .htpasswd file and use it in a rule
    htpasswd /path/to/.htpasswd file <username> 

    server {
        location / {
            auth_basic "Restricted";
            auth_basic_user_file /path/to/.htpasswd;
        }
    }


#### Debug only rewrite rules, sends rewrite debug messages to error_log with [notice]

    server {
        error_log    /var/logs/nginx/example.com.error.log;
        rewrite_log on;
    }

#### Increase error logging level to debug

    server {
        error_log    /var/logs/nginx/example.com.error.log debug;
    }

#### Only log errors from your ip

    events {
        debug_connection <your-ip-address>;
    }

#### Log errors from a specific /location

    server {
        error_log    /var/logs/nginx/example.com.error.log;
            location /admin/ { 
                error_log /var/logs/nginx/admin-error.log debug; 
      }         
    }

#### Added a custom header for debugging

    server {
        location / {
              add_header X-debug-message "This is a debug message";
        }
    }
