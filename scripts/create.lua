local database = ARGV[1]
local values = redis.call("HVALS", "databases")
local index = redis.call("HGET", "databases", database)

if (index) then
    return index
else
    index = #values + 1
end

table.sort(values)

for i=1,#values do
    if (tostring(i) ~= values[i]) then
        index = i
        break
    end
end

redis.call("HSET", "databases", database, index)

return index
