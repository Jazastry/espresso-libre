local colors = require('espresso_libre.colors')

local M = {}

M.setup = function()
  -- Set terminal colors based on the authentic Espresso_Libre theme
  vim.g.terminal_color_0 = colors.bg                    -- black
  vim.g.terminal_color_1 = colors.constant              -- red
  vim.g.terminal_color_2 = colors.string                -- green
  vim.g.terminal_color_3 = colors.search                -- yellow
  vim.g.terminal_color_4 = colors.keyword               -- blue
  vim.g.terminal_color_5 = colors.constant_builtin      -- magenta
  vim.g.terminal_color_6 = colors.variable              -- cyan
  vim.g.terminal_color_7 = colors.fg                    -- white
  
  -- Bright colors
  vim.g.terminal_color_8 = colors.method_type           -- bright black (gray)
  vim.g.terminal_color_9 = colors.match_paren           -- bright red
  vim.g.terminal_color_10 = colors.string_escape        -- bright green
  vim.g.terminal_color_11 = colors.terminal.bright_yellow -- bright yellow
  vim.g.terminal_color_12 = colors.library_function     -- bright blue
  vim.g.terminal_color_13 = colors.library_object       -- bright magenta
  vim.g.terminal_color_14 = colors.terminal.bright_cyan -- bright cyan
  vim.g.terminal_color_15 = colors.terminal.bright_white -- bright white
end

return M 