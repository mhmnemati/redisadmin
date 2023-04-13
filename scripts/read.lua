local database = ARGV[1]

return redis.call("HGET", "databases", database)
