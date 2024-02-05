local git = {}
local c = require("oceanic-next.config").colors

function git.highlights()
	return {
		GitGutterAdd = { fg = c.green, bg = c.base00, bold = true },
		GitGutterChange = { fg = c.blue, bg = c.base00, bold = true },
		GitGutterDelete = { fg = c.red, bg = c.base00, bold = true },
		GitGutterChangeDelete = { fg = c.purple, bg = c.base00, bold = true },
	}
end

return git
