npm set <property-name>             # Used to set properties in ~/.npmrc file
npm set init-author-name 'name'     # Set default author name, i.e. 'Bradley Bossard'
npm set init-author-email 'email'   # Set default author email
npm set init-author-url 'url'       # Set default author url, i.e. 'http://bradleybossard.com'
npm set init-license 'license'      # Set default license, i.e. 'MIT'
npm set save-exact <true|false>     # Set exact library versions when adding

npm adduser                         # Log into npmjs.com

npm init                            # Create a package.json file

npm publish                         # Publish current version to npmjs.com
npm publish --tag beta              # Publish a beta version

npm info

npm install <library-name>
npm install <library-name>@beta     # Download beta version (if libary was published with --tag beta)
