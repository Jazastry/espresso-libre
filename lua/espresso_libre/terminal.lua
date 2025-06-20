local M = {}

function M.setup(colors)
  -- Set terminal colors for integrated terminal
  vim.g.terminal_color_0 = colors.bg              -- Black
  vim.g.terminal_color_1 = colors.red             -- Red
  vim.g.terminal_color_2 = colors.green           -- Green
  vim.g.terminal_color_3 = colors.yellow          -- Yellow
  vim.g.terminal_color_4 = colors.blue            -- Blue
  vim.g.terminal_color_5 = colors.purple          -- Magenta
  vim.g.terminal_color_6 = colors.cyan            -- Cyan
  vim.g.terminal_color_7 = colors.fg              -- White
  vim.g.terminal_color_8 = colors.brown_light     -- Bright Black
  vim.g.terminal_color_9 = colors.red             -- Bright Red
  vim.g.terminal_color_10 = colors.green          -- Bright Green
  vim.g.terminal_color_11 = colors.caramel        -- Bright Yellow
  vim.g.terminal_color_12 = colors.blue           -- Bright Blue
  vim.g.terminal_color_13 = colors.magenta        -- Bright Magenta
  vim.g.terminal_color_14 = colors.cyan           -- Bright Cyan
  vim.g.terminal_color_15 = colors.cream          -- Bright White
end

return M 