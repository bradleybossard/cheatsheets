# redis

```
redis-cli  # start redis cli tool
```

```
DBSIZE                       # number of keys in db
KEYS *                       # show all keys
TYPE <key>                   # show key type
SET <key> <value>            # set a key to a string value
GET <key>                    # gets a string value from a key
HGETALL <key>                # gets a hash value
LRANGE <key> <start> <end>   # gets a list
SMEMBER <key>                # gets a set

FLUSHALL           # delete all keys from all databases
FLUSHDB            # delete keys from current database
