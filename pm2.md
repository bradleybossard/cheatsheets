    export NODE_ENV=development                 # set pm2 environment variable, where "development" is config in your config.json
    pm2 start app.js

    pm2 list                                    # list all running pm2 instances
    pm2 start app.js --name <service-name>
    pm2 delete myoldappname                     # delete service
    pm2 restart <job-name> --watch              # restart job and watch files
