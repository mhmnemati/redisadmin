local database = ARGV[1]
local values = redis.call("HVALS", "databases")
local index = redis.call("HGET", "databases", database)

if (index) then
    return index
else
    index = #values + 1
end

local numbers = {}
for i=1,#values do
    numbers[i] = tonumber(values[i])
end

table.sort(numbers)

for i=1,#numbers do
    if (i ~= numbers[i]) then
        index = i
        break
    end
end

redis.call("HSET", "databases", database, index)

return index
