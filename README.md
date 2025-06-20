# Espresso_Libre.nvim

A warm and cozy Neovim colorscheme inspired by the Espresso_Libre VSCode theme. This theme brings the rich, coffee-inspired brown tones and cream colors to your Neovim setup, creating a comfortable coding environment perfect for long programming sessions.

![Espresso_Libre Theme Preview](preview.png)

## ✨ Features

- 🎨 **Rich Coffee Palette**: Warm browns, creams, and caramel tones
- 🌙 **Dark Theme**: Easy on the eyes for extended coding sessions
- 🔧 **Highly Configurable**: Extensive customization options
- 📦 **Plugin Support**: Built-in support for popular Neovim plugins
- 🔥 **Treesitter Ready**: Full Tree-sitter syntax highlighting support
- 🚀 **LSP Integration**: Comprehensive LSP diagnostics styling
- 📱 **Terminal Colors**: Matching terminal color scheme

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/espresso_libre.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("espresso_libre").setup({
      -- Configuration options
    })
    vim.cmd.colorscheme("espresso_libre")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-username/espresso_libre.nvim",
  config = function()
    require("espresso_libre").setup()
    vim.cmd.colorscheme("espresso_libre")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-username/espresso_libre.nvim'
```

## 🚀 Usage

### Basic Usage

```lua
-- Load with default settings
require("espresso_libre").load()

-- Or use the colorscheme command
vim.cmd.colorscheme("espresso_libre")
```

### Advanced Configuration

```lua
require("espresso_libre").setup({
  -- Enable transparent background
  transparent = false,
  
  -- Enable italic comments
  italic_comments = true,
  
  -- Underline links
  underline_links = true,
  
  -- Disable nvim-tree background color
  disable_nvimtree_bg = false,
  
  -- Apply theme colors to terminal
  terminal_colors = true,
  
  -- Override specific colors
  color_overrides = {
    bg = "#1A1A1A",  -- Custom background
    fg = "#F0F0F0",  -- Custom foreground
  },
  
  -- Override specific highlight groups
  group_overrides = {
    Comment = { fg = "#888888", italic = true },
    Keyword = { fg = "#FF6B6B", bold = true },
  }
})

-- Load the theme
require("espresso_libre").load()
```

## 🎨 Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| ![#2a211c](https://via.placeholder.com/15/2a211c/000000?text=+) | `#2a211c` | Background |
| ![#bdae9d](https://via.placeholder.com/15/bdae9d/000000?text=+) | `#bdae9d` | Foreground |
| ![#ff9358](https://via.placeholder.com/15/ff9358/000000?text=+) | `#ff9358` | Orange (Functions/Accent) |
| ![#049b0a](https://via.placeholder.com/15/049b0a/000000?text=+) | `#049b0a` | Green (Strings) |
| ![#43a8ed](https://via.placeholder.com/15/43a8ed/000000?text=+) | `#43a8ed` | Blue (Keywords) |
| ![#ffcc02](https://via.placeholder.com/15/ffcc02/000000?text=+) | `#ffcc02` | Yellow (Types) |
| ![#d90429](https://via.placeholder.com/15/d90429/000000?text=+) | `#d90429` | Red (Errors) |
| ![#6b5a4d](https://via.placeholder.com/15/6b5a4d/000000?text=+) | `#6b5a4d` | Muted Brown (Line Numbers) |

## 🔌 Plugin Support

Espresso_Libre comes with built-in support for popular Neovim plugins:

- **Tree-sitter**: Full syntax highlighting support
- **LSP**: Diagnostics, references, and symbols
- **Telescope**: Fuzzy finder styling
- **NvimTree**: File explorer theming
- **Neo-tree**: Modern file explorer support
- **GitSigns**: Git integration colors
- **WhichKey**: Keybinding helper styling
- **Bufferline**: Buffer/tab styling
- **Lualine**: Status line theming
- **Indent Blankline**: Indentation guides

### Lualine Configuration

```lua
require('lualine').setup({
  options = {
    theme = 'espresso_libre',  -- Use the built-in lualine theme
  },
})
```

### Bufferline Configuration

The theme includes comprehensive bufferline support. Here's a recommended configuration:

```lua
require("bufferline").setup({
  options = {
    buffer_close_icon = "",
    close_command = "bdelete %d",
    close_icon = "",
    indicator = {
      style = "icon",
      icon = " ",
    },
    offsets = { 
      { 
        filetype = "NvimTree", 
        text = "EXPLORER", 
        text_align = "center" 
      } 
    },
    show_close_icon = false,
    show_tab_indicators = true,
  },
})
```

## ⚙️ Configuration Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `transparent` | boolean | `false` | Enable transparent background |
| `italic_comments` | boolean | `true` | Use italics for comments |
| `underline_links` | boolean | `true` | Underline links and URLs |
| `disable_nvimtree_bg` | boolean | `false` | Remove NvimTree background |
| `terminal_colors` | boolean | `true` | Apply colors to terminal |
| `color_overrides` | table | `{}` | Override specific colors |
| `group_overrides` | table | `{}` | Override highlight groups |

## 🛠️ Customization Examples

### Transparent Background

```lua
require("espresso_libre").setup({
  transparent = true,
})
```

### Custom Colors

```lua
require("espresso_libre").setup({
  color_overrides = {
    bg = "#1E1E1E",           -- Darker background
    caramel = "#FFD700",      -- Golden accent
    green = "#90EE90",        -- Lighter green
  },
})
```

### Custom Highlight Groups

```lua
require("espresso_libre").setup({
  group_overrides = {
    -- Make comments more subtle
    Comment = { fg = "#6B4423", italic = true },
    
    -- Highlight TODOs more prominently
    Todo = { fg = "#FFD700", bg = "#8B4513", bold = true },
    
    -- Custom cursor line
    CursorLine = { bg = "#3D2B23" },
  },
})
```

## 🔄 Switching Themes

You can programmatically switch to Espresso_Libre:

```lua
-- Switch to Espresso_Libre
require("espresso_libre").load()

-- Or use the traditional colorscheme command
vim.cmd.colorscheme("espresso_libre")
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues, feature requests, or pull requests.

### Development Setup

1. Clone the repository
2. Make your changes
3. Test with your Neovim configuration
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by the original [Espresso_Libre VSCode theme](https://github.com/gerane/VSCodeThemes/tree/master/gerane.Theme-Espresso_Libre)
- Built with inspiration from the [vscode.nvim](https://github.com/Mofiqul/vscode.nvim) theme structure
- Coffee and espresso color palettes from various design resources

---

**Enjoy coding with the warm, cozy feeling of Espresso_Libre! ☕** 