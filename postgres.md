### Access postgres without creating new user (Ubuntu)

`sudo -u postgres psql`

### Create new user

`sudo -u postgres createuser --interactive`

### Create database

`createdb <databasename>`

### Begin using database

`psql <databasename>`

### Run .sql script from CLI

`psql -d <databasename> -f <path/to/sql>`

### Commands
```
\conninfo         # Show connection info
\l                # Show databases
\d                # Show tables
\dt <tablename>   # Describe table
\q                # Quit
```
