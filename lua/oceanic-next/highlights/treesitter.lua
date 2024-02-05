local treesitter = {}
local c = require("oceanic-next.config").colors

function treesitter.highlights()
	return {
		["@include"] = { fg = c.purple },
		["@punctuation.bracket"] = { fg = c.cyan },
		["@punctuation.delimiter"] = { fg = c.cyan },
		["@punctuation.special"] = { fg = c.cyan },

		["@parameter"] = { fg = c.base07 },

		["@type"] = { fg = c.blue },
		["@type.definition"] = { fg = c.blue },
		["@type.builtin"] = { fg = c.blue },
		["@type.qualifier"] = { fg = c.purple },
		-- ["@type.typescript"] = { fg = c.yellow },


		["@function"] = { fg = c.blue },
		["@function.call"] = { fg = c.blue },
		["@function.builtin"] = { fg = c.blue },
		["@function.macro"] = { fg = c.red },

		["@tag"] = { fg = c.base07 },
		["@tag.delimiter"] = { fg = c.cyan },
		["@tag.attribute"] = { fg = c.purple },

		["@property"] = { fg = c.base07 },
		-- ["@property.json"] = { fg = c.green },


		["@method"] = { fg = c.blue },
		["@method.call"] = { fg = c.blue },

		["@constructor"] = { fg = c.base07 },

		["@variable"] = { fg = c.base06 },
		["@variable.builtin"] = { fg = c.red },
		-- ["@variable.typescript"] = { fg = c.base07 },

		["@operator"] = { fg = c.orange },

		["@keyword"] = { fg = c.purple },
		["@keyword.operator"] = { fg = c.purple },
		["@keyword.return"] = { fg = c.purple },
		["@keyword.function"] = { fg = c.purple },

		["@label"] = { fg = c.cyan },
		["@conditional"] = { fg = c.purple },
		["@namespace"] = { fg = c.base07 },
		["@symbol"] = { fg = c.green },
		["@exception"] = { fg = c.red },

		["@comment"] = { fg = c.base03, italic = true },
		["@comment.todo"] = { fg = c.yellow, bg = c.base01 },
		["@comment.note"] = { fg = c.yellow },

		["@error"] = { fg = c.red },
		["@none"] = { fg = c.base05 },

		["@preproc"] = { fg = c.yellow },
		["@define"] = { fg = c.purple },

		["@string"] = { fg = c.green },

		["@string.regex"] = { fg = c.cyan },
		["@string.escape"] = { fg = c.cyan },
		["@string.special"] = { fg = c.brown },

		["@character"] = { fg = c.red },
		["@character.special"] = { fg = c.brown },

		["@boolean"] = { fg = c.orange },
		["@number"] = { fg = c.orange },
		["@float"] = { fg = c.orange },
		["@repeat"] = { fg = c.purple },
		["@debug"] = { fg = c.red },
		["@storageclass"] = { fg = c.yellow },

		["@attribute"] = { fg = c.cyan },
		["@field"] = { fg = c.base05 },

		["@constant"] = { fg = c.base06 },
		["@constant.builtin"] = { fg = c.base06 },
		["@constant.macro"] = { fg = c.base06 },

		["@diff.plus"] = { fg = c.green, bg = c.base01, bold = true },
		["@diff.minus"] = { fg = c.red, bg = c.base01 },

		-- ["@text"] = { fg = c.base05 },

		["@markup.strong"] = { bold = true },
		["@markup.emphasis"] = { italic = true },
		["@markup.underline"] = { underline = true },
		["@markup.strike"] = { strikethrough = true },
		["@markup.heading"] = { fg = c.blue },
		["@markup.raw"] = { fg = c.orange },
		["@markup.link.url"] = { fg = c.orange },
		["@markup.math"] = { fg = c.orange },

		["@markup.environment"] = { fg = c.red },
		["@markup.environment.name"] = { fg = c.purple, italic = true },

		["@markup.link"] = { fg = c.base05 },
		["@markup.warning"] = { fg = c.yellow },
		["@markup.danger"] = { fg = c.red },
	}
end

return treesitter
