local M = {}

local defaults = { colors = {} }

function M.setup(options)
	options = vim.tbl_deep_extend("force", {}, defaults, options or {})
	for k, v in pairs(options) do
		M[k] = v
	end
end

return M
