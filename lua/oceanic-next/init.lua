local utils = require("oceanic-next.utils")
local config = require("oceanic-next.config")
local palette = require("oceanic-next.palette")
local M = {}

M.load = function(background)
	if background == "dark" then
		config.colors = palette.dark()
	elseif background == "light" then
		config.colors = palette.light()
	end

	utils.load(
		require("oceanic-next.highlights.vim").highlights(),
		require("oceanic-next.highlights.treesitter").highlights(),
		require("oceanic-next.highlights.lsp").highlights(),
		require("oceanic-next.highlights.git").highlights()
	)
end
return M
