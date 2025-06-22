-- Espresso-Libre colorscheme for Neovim
-- Based on the original Espresso Libre TextMate theme by Chris Thomas
-- Colors extracted directly from the .tmTheme file

local colors = {}

-- Base colors from .tmTheme
colors.bg = "#2A211C"        -- background
colors.fg = "#BDAE9D"        -- foreground
colors.caret = "#889AFF"     -- caret
colors.invisibles = "#BFBFBF" -- invisibles
colors.line_highlight = "#3A312C" -- lineHighlight
colors.selection = "#C3DCFF" -- selection

-- Syntax colors from .tmTheme (exact matches)
colors.comment = "#0066FF"           -- Comment (blue, italic)
colors.keyword = "#43A8ED"           -- Keyword, storage (light blue, bold)
colors.number = "#44AA43"            -- Number (green)
colors.constant = "#318495"          -- User-defined constant (teal, bold)
colors.constant_builtin = "#585CF6"  -- Built-in constant (purple, bold)
colors.variable = "#318495"          -- Variable (teal)
colors.string = "#049B0A"            -- String (green)
colors.string_escape = "#2FE420"     -- String interpolation (bright green)
colors.preprocessor = "#1A921C"      -- Preprocessor line (dark green)
colors.preprocessor_directive = "#9AFF87" -- Preprocessor directive (light green, bold)
colors.function_name = "#FF9358"     -- Function name (orange, bold)
colors.library_function = "#7290D9"  -- Library function (blue, bold)
colors.library_object = "#6D79DE"    -- Library object (purple, bold)
colors.library_constant = "#00AF0E"  -- Library constant (green, bold)
colors.library_variable = "#2F5FE0"  -- Library variable (blue, bold)
colors.operator = "#687687"          -- JS: Operator (gray)
colors.markup_tag = "#43A8ED"        -- Markup tag (same as keyword)
colors.markup_xml = "#8F7E65"        -- Markup XML declaration (brown)
colors.markup_doctype = "#888888"    -- Markup DOCTYPE (gray)
colors.method_type = "#8B8E9C"       -- Function argument and result types (gray)

-- Error and invalid colors from .tmTheme
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
colors.search = colors.caret         -- Use caret color for search
colors.match_paren = colors.caret    -- Use caret color for matching parentheses

-- Terminal colors
colors.terminal = {
  black = colors.bg,
  red = colors.constant,
  green = colors.string,
  yellow = "#FFD700",
  blue = colors.keyword,
  magenta = colors.constant_builtin,
  cyan = colors.variable,
  white = colors.fg,
  bright_black = "#666666",
  bright_red = "#FF6B6B",
  bright_green = colors.string_escape,
  bright_yellow = "#FFFF99",
  bright_blue = colors.library_function,
  bright_magenta = colors.library_object,
  bright_cyan = "#7FFFD4",
  bright_white = "#FFFFFF"
}

return colors 