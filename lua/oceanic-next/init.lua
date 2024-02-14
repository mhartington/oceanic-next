local utils = require("oceanic-next.utils")
local config = require("oceanic-next.config")
local palette = require("oceanic-next.palette")
local M = {}

M.load = function(background)
  config.setup({colors = palette[background]()})
	utils.load(
		require("oceanic-next.highlights.editor").highlights(),
		require("oceanic-next.highlights.treesitter").highlights(),
		require("oceanic-next.highlights.lsp").highlights(),
		require("oceanic-next.highlights.git").highlights()
	)
end
return M
