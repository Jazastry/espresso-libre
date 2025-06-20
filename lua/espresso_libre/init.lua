local M = {}

-- Default configuration
M.config = {
  transparent = false,
  italic_comments = true,
  underline_links = true,
  disable_nvimtree_bg = false,
  terminal_colors = true,
  color_overrides = {},
  group_overrides = {},
}

-- Setup function to configure the theme
function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

-- Load the theme
function M.load()
  -- Clear existing colors
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.g.colors_name = "espresso_libre"
  
  local colors = require("espresso_libre.colors")
  local theme = require("espresso_libre.theme")
  
  -- Apply color overrides
  if M.config.color_overrides then
    colors = vim.tbl_deep_extend("force", colors, M.config.color_overrides)
  end
  
  -- Load theme
  theme.load(colors, M.config)
  
  -- Apply group overrides
  if M.config.group_overrides then
    for group, opts in pairs(M.config.group_overrides) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
  
  -- Set terminal colors if enabled
  if M.config.terminal_colors then
    require("espresso_libre.terminal").setup(colors)
  end
end

return M 