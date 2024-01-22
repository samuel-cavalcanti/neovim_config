local M = {}
function M.dump_table(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. M.dump_table(v) .. '\n'
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

function M.print_table(table)
    print(M.dump_table(table))
end

return M
