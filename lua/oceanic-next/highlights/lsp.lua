local lsp = {}
local c = require("oceanic-next.config").colors

function lsp.highlights()
	return {
		["@lsp.type.boolean"] = { link = "@boolean" },
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.decorator"] = { link = "@attribute" },
		["@lsp.type.deriveHelper"] = { link = "@attribute" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
		["@lsp.type.generic"] = { link = "@variable" },
		["@lsp.type.interface"] = { fg = c.blue },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.lifetime"] = { link = "@keyword.storage" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.typeAlias"] = { link = "@type.definition" },
		["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.red },
		["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
		["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
		["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		["@lsp.typemod.string.injected"] = { link = "@string" },
		["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue },
		["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = c.blue },
		["@lsp.typemod.variable.callable"] = { link = "@function" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		["@lsp.typemod.variable.injected"] = { link = "@variable" },
		["@lsp.typemod.variable.static"] = { link = "@constant" },
		-- Standard lsp diagnostics
		DiagnosticError = {},
		DiagnosticSignError = { fg = c.red },
		DiagnosticUnderlineError = { undercurl = true, sp = c.red },
		DiagnosticFloatingError = { fg = c.red, bg = c.base01 },

		DiagnosticWarn = {},
		DiagnosticSignWarn = { fg = c.yellow },
		DiagnosticUnderlineWarn = { undercurl = true },
		DiagnosticFloatingWarn = { fg = c.yellow, bg = c.base01 },

		DiagnosticInformation = {},
		DiagnosticSignInformation = { fg = c.blue },
		DiagnosticUnderlineInformation = { undercurl = true },
		DiagnosticFloatingInformation = { fg = c.blue, bg = c.base01 },

		DiagnosticHint = {},
		DiagnosticSignHint = { fg = c.cyan },
		DiagnosticUnderlineHint = { undercurl = true },
		DiagnosticFloatingHint = { fg = c.cyan, bg = c.base01 },

		-- LspReferenceText = { bg = c.base01 },
		-- LspReferenceRead = { bg = c.base01 },
		-- LspReferenceWrite = { bg = c.base01 },
		-- FloatBorder = { fg = c.base04 },
	}
end

return lsp
