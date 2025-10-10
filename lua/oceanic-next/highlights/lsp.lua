local darken = require("oceanic-next.utils").darken
local blend = require("oceanic-next.utils").blend

local lsp = {}

function lsp.highlights()
  local c = require("oceanic-next.config").colors
  return {
    -- NEW
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { fg = c.yellow },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"] = { fg = c.green },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { link = "@error" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    -- ["@lsp.type.class"] = {fg=c.base07},
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },

    ["@lsp.type.operator.lua"] = {link="@punctuation.bracket"},

    -- Standard lsp diagnostics
    DiagnosticError = {},
    DiagnosticSignError = { fg = c.red },
    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticFloatingError = { fg = c.red, bg = blend(c.red, c.base00, 0.9) },
    DiagnosticVirtualLinesError = { fg = c.red, bg = blend(c.red, c.base00, 0.9) },

    DiagnosticWarn = {},
    DiagnosticSignWarn = { fg = c.yellow },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticFloatingWarn = { fg = c.yellow },
    DiagnosticVirtualLinesWarn = { fg = c.yellow },

    DiagnosticInformation = {},
    DiagnosticSignInformation = { fg = c.blue },
    DiagnosticUnderlineInformation = { undercurl = true, sp = c.blue },
    DiagnosticFloatingInformation = { fg = c.blue },
    DiagnosticVirtualLinesInfo = { fg = c.blue },

    DiagnosticHint = {},
    DiagnosticSignHint = { fg = c.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.cyan },
    DiagnosticFloatingHint = { fg = c.cyan },
    DiagnosticVirtualLinesHint = { fg = c.cyan },

    DiagnosticUnnecessary = { undercurl = true, sp = c.base03 },

    LspReferenceText = { bg = c.base01 },
    LspReferenceRead = { bg = c.base01 },
    LspReferenceWrite = { bg = c.base01 },
    -- DiagnosticVirtualLinesOk = {},
  }
end

return lsp
