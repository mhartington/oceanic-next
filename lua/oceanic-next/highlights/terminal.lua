local terminal = {}

function terminal.highlights()
  local c = require("oceanic-next.config").colors
  vim.g.terminal_color_0 = c.base00
  vim.g.terminal_color_8 = c.base03

  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_9 = c.red

  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_10 = c.green

  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_11 = c.yellow

  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_12 = c.blue

  vim.g.terminal_color_5 = c.purple
  vim.g.terminal_color_13 = c.purple

  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_14 = c.cyan

  vim.g.terminal_color_7 = c.base05
  vim.g.terminal_color_15 = c.base05

  vim.g.terminal_color_background = c.base00
  vim.g.terminal_color_foreground = c.white
end

return terminal
