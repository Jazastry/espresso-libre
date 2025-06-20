-- Espresso_Libre colorscheme for Neovim
-- Based on the original Espresso Libre TextMate theme by Chris Thomas

local colors = {}

-- Base colors from the original theme
colors.bg = "#2A211C"        -- background
colors.fg = "#BDAE9D"        -- foreground
colors.caret = "#889AFF"     -- caret
colors.invisibles = "#BFBFBF" -- invisibles
colors.line_highlight = "#3A312C" -- lineHighlight
colors.selection = "#C3DCFF" -- selection

-- Syntax colors from the original theme
colors.comment = "#0066FF"           -- Comment (blue)
colors.keyword = "#43A8ED"           -- Keyword, storage (light blue)
colors.number = "#44AA43"            -- Number (green)
colors.constant = "#C5656B"          -- User-defined constant (red/pink)
colors.constant_builtin = "#585CF6"  -- Built-in constant (purple)
colors.variable = "#318495"          -- Variable (teal)
colors.string = "#049B0A"            -- String (green)
colors.string_escape = "#2FE420"     -- String interpolation (bright green)
colors.preprocessor = "#1A921C"      -- Preprocessor line (dark green)
colors.preprocessor_directive = "#9AFF87" -- Preprocessor directive (light green)
colors.function_name = "#FF9358"     -- Function name (orange)
colors.library_function = "#7290D9"  -- Library function (blue)
colors.library_object = "#6D79DE"    -- Library object (purple)
colors.library_constant = "#00AF0E"  -- Library constant (green)
colors.library_variable = "#2F5FE0"  -- Library variable (blue)
colors.operator = "#687687"          -- JS: Operator (gray)
colors.markup_tag = "#43A8ED"        -- Markup tag (same as keyword)
colors.markup_xml = "#8F7E65"        -- Markup XML declaration (brown)
colors.markup_doctype = "#888888"    -- Markup DOCTYPE (gray)
colors.method_type = "#8B8E9C"       -- Function argument and result types (gray)

-- Additional colors for UI elements
colors.error = "#990000"             -- Invalid background (red)
colors.error_fg = "#FFFFFF"          -- Invalid foreground (white)
colors.warning = "#FFD0D0"           -- Invalid trailing whitespace (light red)
colors.embedded_bg = "#F5AA7730"     -- Embedded source background (transparent orange)

-- Derived colors for additional UI elements
colors.dark_bg = "#1A120F"           -- Darker background
colors.light_bg = "#4A413C"          -- Lighter background
colors.border = "#5A514C"            -- Border color
colors.cursor_line = colors.line_highlight
colors.visual = colors.selection
colors.search = "#FFD700"            -- Search highlight (gold)
colors.match_paren = "#FF6B6B"       -- Matching parentheses (red)

-- Terminal colors mapped from authentic .tmTheme colors
colors.terminal = {
  -- Standard colors (using closest authentic theme colors)
  black = colors.bg,                   -- #2A211C (background)
  red = colors.constant,               -- #C5656B (user-defined constant)
  green = colors.string,               -- #049B0A (string)
  yellow = colors.function_name,       -- #FF9358 (function name - closest to yellow/orange)
  blue = colors.keyword,               -- #43A8ED (keyword)
  magenta = colors.constant_builtin,   -- #585CF6 (built-in constant)
  cyan = colors.variable,              -- #318495 (variable)
  white = colors.fg,                   -- #BDAE9D (foreground)
  
  -- Bright colors (using brighter/alternate authentic colors)
  bright_black = colors.method_type,   -- #8B8E9C (gray from method types)
  bright_red = colors.error,           -- #990000 (error red)
  bright_green = colors.string_escape, -- #2FE420 (string interpolation - bright green)
  bright_yellow = colors.preprocessor_directive, -- #9AFF87 (light green/yellow-ish)
  bright_blue = colors.library_function, -- #7290D9 (library function blue)
  bright_magenta = colors.library_object, -- #6D79DE (library object purple)
  bright_cyan = colors.caret,          -- #889AFF (caret blue)
  bright_white = colors.invisibles     -- #BFBFBF (invisibles - light gray)
}

return colors 