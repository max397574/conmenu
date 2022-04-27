local globs = require("lua-glob-pattern")

-- Checks if item is inside a list
local function listIncludes(list, item)
    for _, v in ipairs(list) do
        if v == item then
            return true
        end
    end
    return false
end

local function GlobsMatch(patterns, path)
    for _, v in ipairs(patterns) do
        if path:match(globs.globtopattern(v)) then
            return true
        end
    end
    return false
end

local function Split(s, delimiter)
    local result = {}
    for match in (s .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

function FileExists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    end
    return false
end

return {
    listIncludes = listIncludes,
    FileExists = FileExists,
    Split = Split,
    GlobsMatch = GlobsMatch,
}
