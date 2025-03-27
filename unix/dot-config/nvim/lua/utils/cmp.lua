---@class yukivim.utils.cmp
local M = {}

---@type table<string, fun(): boolean?>
M.actions = {
    snippet_forward = function()
        if vim.snippet.active({direction = 1}) then
            vim.schedule(function ()
                vim.snippet.jump(1)
            end)
            return true
        end
    end
}

---@param actions table
---@param fallback? string|fun()
function M.map(actions, fallback)
    return function()
        for _, name in ipairs(actions) do
            if M.actions[name] then
                local ret = M.actions[name]()
                if ret then
                    return true
                end
            end
        end
        return type(fallback) == 'function' and fallback() or fallback
     end
end

return M
