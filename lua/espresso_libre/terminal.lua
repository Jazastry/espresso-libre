local colors = require('espresso_libre.colors')

local M = {}

M.setup = function()
  -- Set terminal colors based on the exact .tmTheme colors
  vim.g.terminal_color_0 = colors.bg                    -- black (#2A211C)
  vim.g.terminal_color_1 = colors.constant              -- red (#C5656B)
  vim.g.terminal_color_2 = colors.string                -- green (#049B0A)
  vim.g.terminal_color_3 = colors.function_name         -- yellow (#FF9358)
  vim.g.terminal_color_4 = colors.keyword               -- blue (#43A8ED)
  vim.g.terminal_color_5 = colors.constant_builtin      -- magenta (#585CF6)
  vim.g.terminal_color_6 = colors.variable              -- cyan (#318495)
  vim.g.terminal_color_7 = colors.fg                    -- white (#BDAE9D)
  
  -- Bright colors
  vim.g.terminal_color_8 = colors.method_type           -- bright black (#8B8E9C)
  vim.g.terminal_color_9 = "#E5767C"                    -- bright red
  vim.g.terminal_color_10 = colors.string_escape        -- bright green (#2FE420)
  vim.g.terminal_color_11 = "#FFB368"                   -- bright yellow
  vim.g.terminal_color_12 = colors.caret                -- bright blue (#889AFF)
  vim.g.terminal_color_13 = colors.library_object       -- bright magenta (#6D79DE)
  vim.g.terminal_color_14 = "#51A4B5"                   -- bright cyan
  vim.g.terminal_color_15 = "#DDCEBD"                   -- bright white
end

return M 