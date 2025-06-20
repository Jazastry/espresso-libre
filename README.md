# Espresso_Libre Theme for Neovim

A warm, coffee-inspired Neovim colorscheme based on the original **Espresso Libre** TextMate theme by Chris Thomas. This theme brings the cozy, rich browns and vibrant syntax colors of the classic Espresso Libre theme to Neovim.

## 🎨 Color Palette

The theme uses the authentic colors from the original Espresso Libre TextMate theme:

| Element | Color | Hex |
|---------|-------|-----|
| **Background** | Dark Brown | `#2A211C` |
| **Foreground** | Warm Beige | `#BDAE9D` |
| **Comments** | Blue | `#0066FF` |
| **Keywords** | Light Blue | `#43A8ED` |
| **Strings** | Green | `#049B0A` |
| **Numbers** | Green | `#44AA43` |
| **Functions** | Orange | `#FF9358` |
| **Constants** | Red/Pink | `#C5656B` |
| **Built-in Constants** | Purple | `#585CF6` |
| **Variables** | Teal | `#318495` |
| **Operators** | Gray | `#687687` |
| **Line Highlight** | Dark Brown | `#3A312C` |
| **Selection** | Light Blue | `#C3DCFF` |
| **Caret** | Light Blue | `#889AFF` |

## ✨ Features

- 🎯 **Authentic Colors**: Based on the original Espresso Libre TextMate theme
- 🔥 **Rich Syntax Highlighting**: Carefully crafted colors for optimal readability
- 🌟 **Modern Plugin Support**: Works with Tree-sitter, LSP, Telescope, NvimTree, and more
- ⚡ **High Performance**: Optimized for speed and efficiency
- 🎨 **Customizable**: Easy configuration options for styles and transparency
- 📱 **Terminal Support**: Includes terminal color definitions
- 🔧 **Lualine Integration**: Custom lualine theme included

## 📦 Installation

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'username/espresso_libre'
```

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'username/espresso_libre',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme espresso_libre]])
  end,
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'username/espresso_libre'
```

### Manual Installation

Clone this repository to your Neovim configuration directory:

```bash
git clone https://github.com/username/espresso_libre.git ~/.config/nvim/pack/themes/start/espresso_libre
```

## 🚀 Usage

### Basic Usage

```lua
-- Enable the colorscheme
vim.cmd([[colorscheme espresso_libre]])
```

### With Configuration

```lua
require('espresso_libre').setup({
  transparent = false,        -- Enable transparent background
  terminal_colors = true,     -- Set terminal colors
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    constants = { bold = true },
    strings = {},
    variables = {},
  },
})

vim.cmd([[colorscheme espresso_libre]])
```

## ⚙️ Configuration

### Available Options

```lua
require('espresso_libre').setup({
  transparent = false,        -- Enable transparent background
  terminal_colors = true,     -- Configure terminal colors
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    constants = { bold = true },
    strings = {},
    variables = {},
  },
})
```

### Lualine Integration

```lua
require('lualine').setup({
  options = {
    theme = 'espresso_libre'
  }
})
```

## 🔌 Plugin Support

This theme includes enhanced support for popular Neovim plugins:

- **Tree-sitter**: Full syntax highlighting support
- **LSP**: Diagnostic and semantic highlighting
- **Telescope**: Custom colors for fuzzy finding
- **NvimTree**: File explorer styling
- **GitSigns**: Git integration colors
- **WhichKey**: Command palette styling
- **BufferLine**: Tab/buffer line theming
- **Indent Blankline**: Indentation guides
- **Leap**: Motion plugin highlighting
- **Notify**: Notification styling

## 🎨 Screenshots

*Screenshots coming soon!*

## 🔍 Inspiration

This theme is faithfully based on the original **Espresso Libre** TextMate theme created by Chris Thomas. The color palette and syntax highlighting rules have been carefully preserved to maintain the authentic feel of this beloved editor theme.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

### Development

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Chris Thomas** - Original creator of the Espresso Libre TextMate theme
- The Neovim community for inspiration and feedback
- All the plugin authors who make Neovim amazing

---

*Enjoy coding with the warm, inviting colors of Espresso_Libre! ☕* 