-- Espresso_Libre colorscheme for Neovim
-- Based on the original Espresso Libre TextMate theme by Chris Thomas
-- Traditional vim colorscheme support

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "espresso_libre"
vim.o.background = "dark"

-- Define colors from the original .tmTheme
local colors = {
  -- Base colors
  bg = "#2A211C",        -- background
  fg = "#BDAE9D",        -- foreground
  caret = "#889AFF",     -- caret
  invisibles = "#BFBFBF", -- invisibles
  line_highlight = "#3A312C", -- lineHighlight
  selection = "#C3DCFF", -- selection
  
  -- Syntax colors
  comment = "#0066FF",           -- Comment (blue)
  keyword = "#43A8ED",           -- Keyword, storage (light blue)
  number = "#44AA43",            -- Number (green)
  constant = "#C5656B",          -- User-defined constant (red/pink)
  constant_builtin = "#585CF6",  -- Built-in constant (purple)
  variable = "#318495",          -- Variable (teal)
  string = "#049B0A",            -- String (green)
  string_escape = "#2FE420",     -- String interpolation (bright green)
  preprocessor = "#1A921C",      -- Preprocessor line (dark green)
  preprocessor_directive = "#9AFF87", -- Preprocessor directive (light green)
  function_name = "#FF9358",     -- Function name (orange)
  library_function = "#7290D9",  -- Library function (blue)
  library_object = "#6D79DE",    -- Library object (purple)
  library_constant = "#00AF0E",  -- Library constant (green)
  library_variable = "#2F5FE0",  -- Library variable (blue)
  operator = "#687687",          -- JS: Operator (gray)
  markup_tag = "#43A8ED",        -- Markup tag (same as keyword)
  markup_xml = "#8F7E65",        -- Markup XML declaration (brown)
  markup_doctype = "#888888",    -- Markup DOCTYPE (gray)
  method_type = "#8B8E9C",       -- Function argument and result types (gray)
  
  -- Error colors
  error = "#990000",             -- Invalid background (red)
  error_fg = "#FFFFFF",          -- Invalid foreground (white)
  warning = "#FFD0D0",           -- Invalid trailing whitespace (light red)
  
  -- Derived colors
  dark_bg = "#1A120F",           -- Darker background
  light_bg = "#4A413C",          -- Lighter background
  border = "#5A514C",            -- Border color
  search = "#FFD700",            -- Search highlight (gold)
  match_paren = "#FF6B6B",       -- Matching parentheses (red)
}

-- Function to set highlight groups
local function highlight(group, opts)
  local cmd = "highlight " .. group
  if opts.fg then cmd = cmd .. " guifg=" .. opts.fg end
  if opts.bg then cmd = cmd .. " guibg=" .. opts.bg end
  if opts.sp then cmd = cmd .. " guisp=" .. opts.sp end
  if opts.style then cmd = cmd .. " gui=" .. opts.style end
  vim.cmd(cmd)
end

-- Editor highlights
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("CursorLine", { bg = colors.line_highlight })
highlight("CursorLineNr", { fg = colors.function_name, bg = colors.line_highlight, style = "bold" })
highlight("LineNr", { fg = colors.method_type })
highlight("SignColumn", { bg = colors.bg })
highlight("ColorColumn", { bg = colors.line_highlight })
highlight("Cursor", { fg = colors.bg, bg = colors.caret })
highlight("Visual", { bg = colors.selection })
highlight("VisualNOS", { bg = colors.selection })
highlight("Search", { fg = colors.bg, bg = colors.search })
highlight("IncSearch", { fg = colors.bg, bg = colors.function_name })

-- Popup menu
highlight("Pmenu", { fg = colors.fg, bg = colors.light_bg })
highlight("PmenuSel", { fg = colors.bg, bg = colors.function_name })
highlight("PmenuSbar", { bg = colors.border })
highlight("PmenuThumb", { bg = colors.fg })

-- Status line
highlight("StatusLine", { fg = colors.fg, bg = colors.light_bg })
highlight("StatusLineNC", { fg = colors.method_type, bg = colors.dark_bg })

-- Tab line
highlight("TabLine", { fg = colors.method_type, bg = colors.dark_bg })
highlight("TabLineFill", { bg = colors.dark_bg })
highlight("TabLineSel", { fg = colors.fg, bg = colors.bg })

-- Window separators
highlight("VertSplit", { fg = colors.border })
highlight("WinSeparator", { fg = colors.border })

-- Folds
highlight("Folded", { fg = colors.method_type, bg = colors.light_bg })
highlight("FoldColumn", { fg = colors.method_type, bg = colors.bg })

-- Diff
highlight("DiffAdd", { bg = colors.string, fg = colors.bg })
highlight("DiffChange", { bg = colors.function_name, fg = colors.bg })
highlight("DiffDelete", { bg = colors.error, fg = colors.error_fg })
highlight("DiffText", { bg = colors.keyword, fg = colors.bg })

-- Spelling
highlight("SpellBad", { sp = colors.error, style = "undercurl" })
highlight("SpellCap", { sp = colors.keyword, style = "undercurl" })
highlight("SpellLocal", { sp = colors.library_function, style = "undercurl" })
highlight("SpellRare", { sp = colors.constant, style = "undercurl" })

-- Messages
highlight("ErrorMsg", { fg = colors.error_fg, bg = colors.error })
highlight("WarningMsg", { fg = colors.function_name })
highlight("ModeMsg", { fg = colors.fg })
highlight("MoreMsg", { fg = colors.string })
highlight("Question", { fg = colors.keyword })

-- Syntax highlighting
highlight("Comment", { fg = colors.comment, style = "italic" })
highlight("Constant", { fg = colors.constant, style = "bold" })
highlight("String", { fg = colors.string })
highlight("Character", { fg = colors.string })
highlight("Number", { fg = colors.number })
highlight("Boolean", { fg = colors.constant_builtin, style = "bold" })
highlight("Float", { fg = colors.number })
highlight("Identifier", { fg = colors.variable })
highlight("Function", { fg = colors.function_name, style = "bold" })
highlight("Statement", { fg = colors.keyword, style = "bold" })
highlight("Conditional", { fg = colors.keyword, style = "bold" })
highlight("Repeat", { fg = colors.keyword, style = "bold" })
highlight("Label", { fg = colors.keyword, style = "bold" })
highlight("Operator", { fg = colors.operator })
highlight("Keyword", { fg = colors.keyword, style = "bold" })
highlight("Exception", { fg = colors.keyword, style = "bold" })
highlight("PreProc", { fg = colors.preprocessor })
highlight("Include", { fg = colors.preprocessor_directive, style = "bold" })
highlight("Define", { fg = colors.preprocessor_directive, style = "bold" })
highlight("Macro", { fg = colors.preprocessor_directive, style = "bold" })
highlight("PreCondit", { fg = colors.preprocessor_directive, style = "bold" })
highlight("Type", { fg = colors.library_object, style = "bold,underline" })
highlight("StorageClass", { fg = colors.keyword, style = "bold" })
highlight("Structure", { fg = colors.library_object, style = "bold" })
highlight("Typedef", { fg = colors.library_object, style = "bold" })
highlight("Special", { fg = colors.string_escape })
highlight("SpecialChar", { fg = colors.string_escape })
highlight("Tag", { fg = colors.markup_tag, style = "bold" })
highlight("Delimiter", { fg = colors.fg })
highlight("SpecialComment", { fg = colors.comment, style = "italic" })
highlight("Debug", { fg = colors.function_name })
highlight("Underlined", { fg = colors.keyword, style = "underline" })
highlight("Ignore", { fg = colors.method_type })
highlight("Error", { fg = colors.error_fg, bg = colors.error })
highlight("Todo", { fg = colors.bg, bg = colors.function_name, style = "bold" })

-- LSP diagnostics
highlight("DiagnosticError", { fg = colors.error })
highlight("DiagnosticWarn", { fg = colors.function_name })
highlight("DiagnosticInfo", { fg = colors.keyword })
highlight("DiagnosticHint", { fg = colors.string })
highlight("DiagnosticUnderlineError", { sp = colors.error, style = "undercurl" })
highlight("DiagnosticUnderlineWarn", { sp = colors.function_name, style = "undercurl" })
highlight("DiagnosticUnderlineInfo", { sp = colors.keyword, style = "undercurl" })
highlight("DiagnosticUnderlineHint", { sp = colors.string, style = "undercurl" })

-- LSP references
highlight("LspReferenceText", { bg = colors.line_highlight })
highlight("LspReferenceRead", { bg = colors.line_highlight })
highlight("LspReferenceWrite", { bg = colors.line_highlight })

-- Git signs
highlight("GitSignsAdd", { fg = colors.string })
highlight("GitSignsChange", { fg = colors.function_name })
highlight("GitSignsDelete", { fg = colors.error })

-- Terminal colors
vim.g.terminal_color_0 = colors.bg
vim.g.terminal_color_1 = colors.constant
vim.g.terminal_color_2 = colors.string
vim.g.terminal_color_3 = colors.search
vim.g.terminal_color_4 = colors.keyword
vim.g.terminal_color_5 = colors.constant_builtin
vim.g.terminal_color_6 = colors.variable
vim.g.terminal_color_7 = colors.fg
vim.g.terminal_color_8 = colors.method_type
vim.g.terminal_color_9 = colors.match_paren
vim.g.terminal_color_10 = colors.string_escape
vim.g.terminal_color_11 = "#FFFF99"
vim.g.terminal_color_12 = colors.library_function
vim.g.terminal_color_13 = colors.library_object
vim.g.terminal_color_14 = "#7FFFD4"
vim.g.terminal_color_15 = "#FFFFFF"

-- Bracket-specific highlighting using syntax groups
-- Define syntax groups for specific bracket types
vim.cmd([[
  syntax match CurlyBraces /[{}]/
  syntax match SquareBrackets /[\[\]]/
  syntax match Parentheses /[()]/
]])

-- Apply colors to bracket syntax groups
highlight("CurlyBraces", { fg = colors.function_name })
highlight("SquareBrackets", { fg = colors.constant_builtin })
highlight("Parentheses", { fg = colors.fg })

-- Tree-sitter fallbacks
highlight("@punctuation.bracket", { fg = colors.fg })
highlight("@punctuation.delimiter", { fg = colors.fg }) 