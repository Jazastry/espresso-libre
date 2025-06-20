-- Example configuration for Espresso_Libre.nvim
-- Copy this to your Neovim configuration and modify as needed

-- Basic setup with default options
require("espresso_libre").setup()
vim.cmd.colorscheme("espresso_libre")

-- Advanced setup with custom options
--[[
require("espresso_libre").setup({
  -- Enable transparent background (good for terminal transparency)
  transparent = false,
  
  -- Enable italic comments for better readability
  italic_comments = true,
  
  -- Underline links and URLs
  underline_links = true,
  
  -- Disable nvim-tree background for seamless integration
  disable_nvimtree_bg = false,
  
  -- Apply theme colors to integrated terminal
  terminal_colors = true,
  
  -- Override specific colors if needed
  color_overrides = {
    -- Make background slightly darker
    bg = "#1F1410",
    
    -- Adjust accent color
    caramel = "#E6A85C",
    
    -- Custom cursor color
    cursor = "#FFE4B5",
  },
  
  -- Override specific highlight groups
  group_overrides = {
    -- Make comments more subtle
    Comment = { fg = "#8A5A35", italic = true },
    
    -- Highlight current line number more prominently
    CursorLineNr = { fg = "#F4E6D7", bold = true },
    
    -- Custom TODO highlighting
    Todo = { fg = "#FFD700", bg = "#8B4513", bold = true },
    
    -- Custom error styling
    Error = { fg = "#FF6B6B", bg = "#4A1A1A" },
  }
})

-- Load the theme
require("espresso_libre").load()
--]]

-- Example Lualine integration
--[[
require('lualine').setup({
  options = {
    theme = 'espresso_libre',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
})
--]]

-- Example Bufferline integration
--[[
require("bufferline").setup({
  options = {
    buffer_close_icon = "",
    close_command = "bdelete %d",
    close_icon = "",
    indicator = {
      style = "icon",
      icon = " ",
    },
    left_trunc_marker = "",
    modified_icon = "●",
    offsets = { 
      { 
        filetype = "NvimTree", 
        text = "File Explorer", 
        text_align = "center",
        highlight = "Directory",
      } 
    },
    right_mouse_command = "bdelete! %d",
    right_trunc_marker = "",
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = "thin",
  },
})
--]]

-- Example Telescope configuration that works well with the theme
--[[
require('telescope').setup({
  defaults = {
    winblend = 10,
    border = true,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' },
  },
})
--]]

-- Example NvimTree configuration
--[[
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    highlight_git = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
})
--]]

-- Example autocmd to ensure theme loads properly
--[[
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    if vim.g.colors_name == "espresso_libre" then
      -- Custom highlighting that should be applied after colorscheme loads
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3D2B23" })
      vim.api.nvim_set_hl(0, "Visual", { bg = "#5D4037" })
    end
  end,
})
--]] 