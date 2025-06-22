-- Espresso-Libre theme for lualine
-- Based on the original Espresso Libre TextMate theme by Chris Thomas

local colors = {
  bg = "#2A211C",        -- background
  fg = "#BDAE9D",        -- foreground
  light_bg = "#4A413C",  -- lighter background
  dark_bg = "#1A120F",   -- darker background
  
  -- Syntax colors from the original theme
  function_name = "#FF9358",     -- Function name (orange)
  keyword = "#43A8ED",           -- Keyword (light blue)
  string = "#049B0A",            -- String (green)
  constant = "#C5656B",          -- User-defined constant (red/pink)
  library_function = "#7290D9",  -- Library function (blue)
  method_type = "#8B8E9C",       -- Function argument types (gray)
}

local espresso_libre = {
  normal = {
    a = { fg = colors.bg, bg = colors.function_name, gui = "bold" },
    b = { fg = colors.fg, bg = colors.light_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.string, gui = "bold" },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.keyword, gui = "bold" },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.constant, gui = "bold" },
  },
  command = {
    a = { fg = colors.bg, bg = colors.library_function, gui = "bold" },
  },
  inactive = {
    a = { fg = colors.method_type, bg = colors.dark_bg },
    b = { fg = colors.method_type, bg = colors.dark_bg },
    c = { fg = colors.method_type, bg = colors.dark_bg },
  },
}

return espresso_libre 