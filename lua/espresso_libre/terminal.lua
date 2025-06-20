local colors = require('espresso_libre.colors')

local M = {}

M.setup = function()
  -- Set terminal colors using the closest authentic Espresso_Libre theme colors
  -- Standard colors (0-7)
  vim.g.terminal_color_0 = colors.terminal.black        -- #2A211C (background)
  vim.g.terminal_color_1 = colors.terminal.red          -- #C5656B (user-defined constant)
  vim.g.terminal_color_2 = colors.terminal.green        -- #049B0A (string)
  vim.g.terminal_color_3 = colors.terminal.yellow       -- #FF9358 (function name - orange)
  vim.g.terminal_color_4 = colors.terminal.blue         -- #43A8ED (keyword)
  vim.g.terminal_color_5 = colors.terminal.magenta      -- #585CF6 (built-in constant)
  vim.g.terminal_color_6 = colors.terminal.cyan         -- #318495 (variable)
  vim.g.terminal_color_7 = colors.terminal.white        -- #BDAE9D (foreground)
  
  -- Bright colors (8-15)
  vim.g.terminal_color_8 = colors.terminal.bright_black   -- #8B8E9C (method types gray)
  vim.g.terminal_color_9 = colors.terminal.bright_red     -- #990000 (error red)
  vim.g.terminal_color_10 = colors.terminal.bright_green  -- #2FE420 (string interpolation)
  vim.g.terminal_color_11 = colors.terminal.bright_yellow -- #9AFF87 (preprocessor directive)
  vim.g.terminal_color_12 = colors.terminal.bright_blue   -- #7290D9 (library function)
  vim.g.terminal_color_13 = colors.terminal.bright_magenta -- #6D79DE (library object)
  vim.g.terminal_color_14 = colors.terminal.bright_cyan   -- #889AFF (caret)
  vim.g.terminal_color_15 = colors.terminal.bright_white  -- #BFBFBF (invisibles)
end

return M 