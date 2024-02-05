
    ["@text"] = { fg = c.snow_storm.origin }, -- @deprecated
    ["@markup.strong"] = { bold = true }, --  bold text
    ["@markup.italic"] = { italic = true }, --  text with emphasis
    ["@markup.underline"] = { underline = true }, --  underlined text
    ["@markup.strikethrough"] = { strikethrough = true }, --  strikethrough text
    ["@markup.heading"] = { fg = c.frost.ice }, --  text that is part of a title
    ["@markup.raw"] = { fg = c.frost.polar_water }, --  literal or verbatim text
    ["@markup.link.url"] = { fg = c.aurora.green, underline = true, sp = c.aurora.green }, --  URIs (e.g. hyperlinks)
    ["@markup.math"] = { fg = c.frost.polar_water }, --  math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.environment"] = { fg = c.frost.polar_water }, --  text environments of markup languages
    ["@text.environment"] = { link = "@markup.environment" }, -- @deprecated
    ["@markup.environment.name"] = { fg = c.frost.artic_water }, --  text indicating the type of an environment
    ["@text.environment.name"] = { link = "@markup.environment.name" }, -- @deprecated
    ["@markup.link"] = { fg = c.frost.polar_water }, --  text references, footnotes, citations, etc.
    ["@text.reference"] = { link = "@markup.link" }, -- @deprecated
    ["@comment.todo"] = { fg = c.frost.artic_water }, --  todo notes
    ["@text.todo"] = { link = "@comment.todo" }, -- @deprecated
    ["@comment.note"] = { fg = c.frost.artic_water }, --  info notes
    ["@text.note"] = { link = "@comment.note" }, -- @deprecated
    ["@comment.warning"] = { fg = c.aurora.yellow }, --  warning notes
    ["@text.warning"] = { link = "@comment.warning" }, -- @deprecated
    ["@comment.error"] = { fg = c.aurora.red }, --  danger/error notes
    ["@text.danger"] = { link = "@comment.error" }, -- @deprecated
    ["@text.diff.add"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@ext.diff.delete"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.plus"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@diff.minus"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.delta"] = { link = "DiffChange" },
