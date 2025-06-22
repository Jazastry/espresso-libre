# Espresso-Libre Theme for Neovim

A warm, coffee-inspired Neovim colorscheme based on the original **Espresso Libre** TextMate theme by Chris Thomas. This theme brings the cozy, rich browns and vibrant syntax colors of the classic Espresso Libre theme to Neovim with **exact color matching** from the original .tmTheme file.

## 🎨 Color Palette

The theme uses the **exact colors** extracted directly from the original Espresso Libre .tmTheme file:

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

- 🎯 **Exact Color Matching**: Colors extracted directly from the original .tmTheme file
- 🔥 **Rich Syntax Highlighting**: Faithful reproduction of the original theme's syntax colors
- 🌟 **Modern Plugin Support**: Works with Tree-sitter, LSP, Telescope, NvimTree, and more
- ⚡ **High Performance**: Optimized for speed and efficiency
- 🎨 **Customizable**: Easy configuration options for styles and transparency
- 📱 **Terminal Support**: Includes terminal color definitions with exact theme colors
- 🔧 **Lualine Integration**: Custom lualine theme included
- 🎨 **Font Styling**: Proper bold, italic, and underline styles as per original theme

## ⚠️ Important

**If you use TreeSitter, the Espresso-Libre theme must be loaded AFTER TreeSitter is initialized.** This ensures that TreeSitter's syntax highlighting groups are properly styled by the theme. If you load the colorscheme before TreeSitter, some syntax highlighting may not work correctly.

### Correct Plugin Loading Order (when using TreeSitter):
1. Load TreeSitter plugin
2. Configure TreeSitter
3. Load Espresso-Libre theme
4. Apply colorscheme

#### Example with lazy.nvim (init.lua):
```lua
{
  'nvim-treesitter/nvim-treesitter',
  priority = 900,  -- Higher priority loads first
  config = function()
    -- TreeSitter configuration
    require('nvim-treesitter.configs').setup({
      -- your treesitter config
    })
  end,
},
{
  'username/espresso-libre',
  priority = 800,  -- Lower priority loads after TreeSitter
  config = function()
    require('espresso-libre').setup({
      -- your theme config
    })
    vim.cmd([[colorscheme espresso-libre]])
  end,
}
```

#### Example with lazy.nvim (init.vim):
```vim
lua << EOF
require('lazy').setup({
  {
    'nvim-treesitter/nvim-treesitter',
    priority = 900,  -- Higher priority loads first
    config = function()
      -- TreeSitter configuration
      require('nvim-treesitter.configs').setup({
        -- your treesitter config
      })
    end,
  },
  {
    'username/espresso-libre',
    priority = 800,  -- Lower priority loads after TreeSitter
    config = function()
      require('espresso-libre').setup({
        -- your theme config
      })
      vim.cmd([[colorscheme espresso-libre]])
    end,
  }
})
EOF
```

#### Manual Loading Order (init.lua):
```lua
-- 1. Load TreeSitter first
require('nvim-treesitter.configs').setup({
  -- your treesitter config
})

-- 2. Then load and configure the theme
require('espresso-libre').setup({
  -- your theme config
})
vim.cmd([[colorscheme espresso-libre]])
```

#### Manual Loading Order (init.vim):
```vim
" 1. Load TreeSitter first
lua << EOF
require('nvim-treesitter.configs').setup({
  -- your treesitter config
})
EOF

" 2. Then load and configure the theme
lua << EOF
require('espresso-libre').setup({
  -- your theme config
})
EOF
colorscheme espresso-libre
```

## 📦 Installation

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'username/espresso-libre'
```

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'username/espresso-libre',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme espresso-libre]])
  end,
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'username/espresso-libre'
```

### Manual Installation

Clone this repository to your Neovim configuration directory:

```bash
git clone https://github.com/username/espresso-libre.git ~/.config/nvim/pack/themes/start/espresso-libre
```

## 🚀 Usage

### Basic Usage

```lua
-- Enable the colorscheme
vim.cmd([[colorscheme espresso-libre]])
```

### With Configuration

```lua
require('espresso-libre').setup({
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

vim.cmd([[colorscheme espresso-libre]])
```

### init.vim Usage

If you're using Neovim with an `init.vim` configuration file instead of `init.lua`, you can use the theme as follows:

#### Basic Usage in init.vim

```vim
" Enable the colorscheme
colorscheme espresso-libre
```

#### With Configuration in init.vim

```vim
" Configure the theme before loading
lua << EOF
require('espresso-libre').setup({
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
EOF

" Enable the colorscheme
colorscheme espresso-libre
```

#### Alternative init.vim Configuration

If you prefer to keep configuration in Vimscript:

```vim
" Set theme variables before loading (optional)
let g:espresso_libre_transparent = 0
let g:espresso_libre_terminal_colors = 1

" Enable the colorscheme
colorscheme espresso-libre

" Configure lualine theme (if using lualine)
lua << EOF
require('lualine').setup({
  options = {
    theme = 'espresso-libre'
  }
})
EOF
```

## ⚙️ Configuration

### Available Options

```lua
require('espresso-libre').setup({
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
    theme = 'espresso-libre'
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

This theme is faithfully based on the original **Espresso Libre** TextMate theme created by Chris Thomas. The colors are extracted directly from the original .tmTheme file, ensuring **100% accurate color reproduction**. Font styling (bold, italic, underline) has been preserved exactly as specified in the original theme to maintain the authentic feel of this beloved editor theme.

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

*Enjoy coding with the warm, inviting colors of Espresso-Libre! ☕* 