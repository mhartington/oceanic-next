local treesitter = {}

function treesitter.highlights()
	local c = require("oceanic-next.config").colors
	return {
		-- Identifiers ------------------------------------------------------------
		["@variable"] = { fg = c.base07 },
		["@variable.builtin"] = { fg = c.red },
		["@variable.parameter"] = { fg = c.base07 },
		["@variable.member"] = { fg = c.base07 },
		-- ["@variable.typescript"] = { fg = c.base07 },

		["@constant"] = { fg = c.base06 },
		["@constant.builtin"] = { fg = c.base06 },
		["@constant.macro"] = { fg = c.base06 },

		["@module"] = { fg = c.base07 },
		["@label"] = { fg = c.cyan },

		-- Literals ---------------------------------------------------------------
		["@string"] = { fg = c.green },
		["@string.regexp"] = { fg = c.cyan },
		["@string.escape"] = { fg = c.cyan },
		["@string.special"] = { fg = c.brown },
		["@string.special.url"] = { fg = c.brown },

		["@character"] = { fg = c.red },
		["@character.special"] = { fg = c.brown },

		["@boolean"] = { fg = c.orange },
		["@number"] = { fg = c.orange },
		["@number.float"] = { fg = c.orange },

		-- Types ------------------------------------------------------------------
		["@type"] = { fg = c.blue },
		["@type.definition"] = { fg = c.blue },
		["@type.builtin"] = { fg = c.blue },
		-- ["@type.definition"] = { }, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
		-- ["@type.qualifier"] = { }, -- type qualifiers (e.g. `const`)
		["@type.qualifier"] = { fg = c.purple },
		["@type.typescript"] = { fg = c.base07 },
		--
		["@attribute"] = { fg = c.cyan },
		["@property"] = { fg = c.base07 },
		-- ["@property.json"] = { fg = c.green },

		-- Functions --------------------------------------------------------------
		["@function"] = { fg = c.blue },
		["@function.call"] = { fg = c.blue },
		["@function.builtin"] = { fg = c.blue },
		["@function.macro"] = { fg = c.red },
		-- ["@function.method"] = { }, -- method definitions
		-- ["@function.method.call"] = { }, -- method calls
		["@constructor"] = { fg = c.blue },
		["@operator"] = { fg = c.orange },

		-- Keywords ---------------------------------------------------------------
		["@keyword"] = { fg = c.purple },
		-- ["@keyword.coroutine"] = { }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		["@keyword.function"] = { fg = c.purple },
		["@keyword.operator"] = { fg = c.purple },
		["@keyword.import"] = { fg = c.purple },
		["@keyword.return"] = { fg = c.purple },
		["@keyword.repeat"] = { fg = c.purple },
		["@keyword.exception"] = { fg = c.purple },
		["@keyword.conditional"] = { link = "Conditional" }, -- keywords related to conditionals (e.g. `if` / `else`)
		["@keyword.conditional.ternary"] = { link = "Conditional" }, -- ternary operator (e.g. `?` / `:`)
		-- ["@keyword.directive"] = { }, -- various preprocessor directives & shebangs
		-- ["@keyword.directive.define"] = { }, -- preprocessor definition directives

		-- Punctuation ------------------------------------------------------------
		["@punctuation.delimiter"] = { fg = c.cyan },
		["@punctuation.bracket"] = { fg = c.cyan },
		["@punctuation.special"] = { fg = c.cyan },

		-- Comments ---------------------------------------------------------------
		["@comment"] = { fg = c.base03, italic = true },
		["@comment.todo"] = { fg = c.yellow, bg = c.base01 },
		["@comment.note"] = { fg = c.yellow },
		["@commenterror"] = { fg = c.red },
		["@comment.none"] = { fg = c.base05 },

		-- Markup -----------------------------------------------------------------
		["@markup"] = { fg = c.base07 },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },

		["@markup.heading"] = { fg = c.blue },
		["@markup.quote"] = { fg = c.blue },
		["@markup.math"] = { fg = c.orange },

		["@markup.raw"] = { fg = c.orange },
		["@markup.link.url"] = { fg = c.orange },

		["@markup.environment"] = { fg = c.red },
		["@markup.environment.name"] = { fg = c.purple, italic = true },

		["@markup.link"] = { fg = c.base05 },
		["@markup.warning"] = { fg = c.yellow },
		["@markup.danger"] = { fg = c.red },

		["@tag"] = { fg = c.base07 },
		["@tag.delimiter"] = { fg = c.cyan },
		["@tag.attribute"] = { fg = c.purple },

		["@debug"] = { fg = c.red },

		["@diff.plus"] = { fg = c.green, bg = c.base01, bold = true },
		["@diff.minus"] = { fg = c.red, bg = c.base01 },


    -- Legacy highlights ------------------------------------------------------
		["@parameter"] = { link = "@variable.parameter" },
		["@field"] = { link = "@variable.member" },
		["@namespace"] = { link = "@module" },
		["@float"] = { link = "@number.float" },
		["@symbol"] = { link = "@string.special.symbol" },
		["@text"] = { link = "@markup" },
		["@text.strong"] = { link = "@markup.strong" },
		["@text.emphasis"] = { link = "@markup.italic" },
		["@text.underline"] = { link = "@markup.underline" },
		["@text.strike"] = { link = "@markup.strikethrough" },
		["@text.uri"] = { link = "@markup.link.url" },
		["@text.math"] = { link = "@markup.math" },
		["@text.environment"] = { link = "@markup.environment" },
		["@text.environment.name"] = { link = "@markup.environment.name" },
		["@text.title"] = { link = "@markup.heading" },
		["@text.literal"] = { link = "@markup.raw" },
		["@text.reference"] = { link = "@markup.link" },
		["@text.todo.checked"] = { link = "@markup.list.checked" },
		["@text.todo.unchecked"] = { link = "@markup.list.unchecked" },
		["@text.todo"] = { link = "@comment.todo" },
		["@text.warning"] = { link = "@comment.warning" },
		["@text.note"] = { link = "@comment.note" },
		["@text.danger"] = { link = "@comment.error" },
		["@method"] = { link = "@function.method" },
		["@method.call"] = { link = "@function.method.call" },
		["@text.diff.add"] = { link = "@diff.plus" },
		["@text.diff.delete"] = { link = "@diff.minus" },
		["@define"] = { link = "@keyword.directive.define" },
		["@preproc"] = { link = "@keyword.directive" },
		["@storageclass"] = { link = "@keyword.storage" },
		["@conditional"] = { link = "@keyword.conditional" },
		["@exception"] = { link = "@keyword.exception" },
		["@include"] = { link = "@keyword.import" },
		["@repeat"] = { link = "@keyword.repeat" },
		["@variable.member.yaml"] = { link = "@field.yaml" },
		["@text.title.1.markdown"] = { link = "@markup.heading.1.markdown" },
		["@text.title.2.markdown"] = { link = "@markup.heading.2.markdown" },
		["@text.title.3.markdown"] = { link = "@markup.heading.3.markdown" },
		["@text.title.4.markdown"] = { link = "@markup.heading.4.markdown" },
		["@text.title.5.markdown"] = { link = "@markup.heading.5.markdown" },
		["@text.title.6.markdown"] = { link = "@markup.heading.6.markdown" },
	}
end
return treesitter
