# RedisAdmin

RedisAdmin is a docker image for managing redis databases by name.

## Usage

```bash
# Create database and return database index
docker run --rm -it -e REDIS_HOST=192.168.3.2 -e REDIS_PORT=6379 -e REDIS_PASS=123 ghcr.io/ckoliber/redisadmin create mydb

# Delete database and return database index
docker run --rm -it -e REDIS_HOST=192.168.3.2 -e REDIS_PORT=6379 -e REDIS_PASS=123 ghcr.io/ckoliber/redisadmin delete mydb

# Read database and return database index
docker run --rm -it -e REDIS_HOST=192.168.3.2 -e REDIS_PORT=6379 -e REDIS_PASS=123 ghcr.io/ckoliber/redisadmin read mydb
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
