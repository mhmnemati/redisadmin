local database = ARGV[1]
local index = redis.call("HGET", "databases", database)

if (not index) then
    return ""
end

redis.call("HDEL", "databases", database)
redis.call("SELECT", index)
redis.call("FLUSHDB")

return index
