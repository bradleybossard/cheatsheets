### Access postgres without creating new user (Ubuntu)

`sudo -u postgres psql`

### Create new user

`sudo -u postgres createuser --interactive`

or
`sudo -u postgres createuser <user>`


### Create database

`createdb <databasename>`

or

`sudo -u postgres createdb -O <user> <dbname>`

### Begin using database

`psql <databasename>`

### Run .sql script from CLI

`psql -d <databasename> -f <path/to/sql>`

### Commands
```
\conninfo                # Show connection info
\i </path/to/sqlfile>    # Read in a file
\l                       # Show databases
\d                       # Show tables
\dt <tablename>          # Describe table
\q                       # Quit
```

### See hidden SQL commands behind postgres \<whatever> commands
```
\set ECHO_HIDDEN on
\l  # for example
```
