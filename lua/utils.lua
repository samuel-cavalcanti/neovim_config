local M = {}

---@param o table
---@param deep number
---@return string
function M.dump_table(o, deep)
    if type(o) == 'table' then
        local s = '\n{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end

            s = s .. string.rep('  ', deep) .. '[' .. k .. '] = '
            if type(v) == "table" then
                s = s .. M.dump_table(v, deep + 1) .. '\n'
            else
                s = s .. M.dump_table(v, deep) .. '\n'
            end
        end
        return s .. '}\n'
    else
        return tostring(o)
    end
end

---@param table table
function M.print_table(table)
    print(M.dump_table(table, 1))
end

return M
