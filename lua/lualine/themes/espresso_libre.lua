-- Lualine theme for Espresso_Libre
local colors = require("espresso_libre.colors")

local espresso_libre = {
  normal = {
    a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.statusline },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.statusline },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.statusline },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.statusline },
  },
  command = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.statusline },
  },
  inactive = {
    a = { fg = colors.fg_darker, bg = colors.bg_light },
    b = { fg = colors.fg_darker, bg = colors.bg_light },
    c = { fg = colors.fg_darker, bg = colors.bg_light },
  },
}

return espresso_libre 