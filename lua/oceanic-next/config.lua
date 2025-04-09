local M = {}

M.defaults = { colors = {} }

function M.setup(options)
  options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
  for k, v in pairs(options) do
    M[k] = v
  end
end

function M.getTheme()
  return M.colors
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})
return M
