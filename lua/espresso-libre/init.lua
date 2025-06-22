-- Espresso-Libre colorscheme for Neovim
-- Based on the original Espresso Libre TextMate theme by Chris Thomas

local M = {}

M.config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    constants = { bold = true },
    strings = {},
    variables = {},
  },
}

function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.g.colors_name = "espresso-libre"
  vim.o.background = "dark"
  
  local colors = require('espresso-libre.colors')
  local theme = require('espresso-libre.theme')
  local terminal = require('espresso-libre.terminal')
  
  -- Load the theme
  local highlights, lualine_theme = theme.setup()
  
  -- Apply highlights
  for group, opts in pairs(highlights) do
    -- Apply style configurations
    if group == "Comment" and M.config.styles.comments then
      opts = vim.tbl_extend("force", opts, M.config.styles.comments)
    elseif group:match("Keyword") and M.config.styles.keywords then
      opts = vim.tbl_extend("force", opts, M.config.styles.keywords)
    elseif group:match("Function") and M.config.styles.functions then
      opts = vim.tbl_extend("force", opts, M.config.styles.functions)
    elseif group:match("Constant") and M.config.styles.constants then
      opts = vim.tbl_extend("force", opts, M.config.styles.constants)
    elseif group:match("String") and M.config.styles.strings then
      opts = vim.tbl_extend("force", opts, M.config.styles.strings)
    elseif group:match("Variable") and M.config.styles.variables then
      opts = vim.tbl_extend("force", opts, M.config.styles.variables)
    end
    
    -- Handle transparency
    if M.config.transparent then
      if opts.bg == colors.bg then
        opts.bg = nil
      end
    end
    
    vim.api.nvim_set_hl(0, group, opts)
  end
  
  -- Setup terminal colors
  if M.config.terminal_colors then
    terminal.setup()
  end
end

-- Automatically load the colorscheme when required
M.load()

return M 