local darken = require("oceanic-next.utils").darken
local lighten = require("oceanic-next.utils").lighten
local snacks = {}

function snacks.highlights()
  local c = require("oceanic-next.config").colors
  return {
    SnacksDim = { fg = c.base01 },
    SnacksIndent = { fg = c.base01, nocombine = true },

    -- Picker
    SnacksPicker = {bg=darken(c.base00, 5)},
    SnacksPickerBorder = {bg=darken(c.base00, 5), fg=darken(c.base00, 5)},

    SnacksPickerInput = {bg=lighten(c.base00, 5)},
    SnacksPickerInputTitle = {},
    SnacksPickerInputBorder = {bg=lighten(c.base00, 5), fg=lighten(c.base00, 5)},

    SnacksPickerPreview = {bg=darken(c.base00, 2)},
    -- SnacksPickerInputTitle = {},
    SnacksPickerPreviewBorder = {bg=darken(c.base00, 2), fg=darken(c.base00, 2)},
  }
end

return snacks
