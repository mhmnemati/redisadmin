local database = ARGV[1]
local values = redis.call("HVALS", "databases")
local index = #values + 1

table.sort(values)

for i=1,#values do
    if (i ~= tonumber(values[i])) then
        index = i
        break
    end
end

redis.call("HSET", "databases", database, index)

return index
