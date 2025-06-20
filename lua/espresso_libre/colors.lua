-- Espresso_Libre color palette
-- Based on the authentic Espresso_Libre VSCode theme colors

local colors = {
  -- Background colors (from authentic theme)
  bg = "#2a211c",           -- Authentic dark brown background
  bg_alt = "#1f1813",       -- Darker background for sidebars
  bg_light = "#32271f",     -- Lighter background for panels
  bg_lighter = "#3a2f26",   -- Even lighter for selections
  
  -- Foreground colors (from authentic theme)
  fg = "#bdae9d",           -- Authentic beige foreground
  fg_dark = "#a8998a",      -- Darker foreground
  fg_darker = "#8c7d6e",    -- Even darker for comments
  
  -- Coffee brown variations
  brown = "#6B4423",        -- Primary brown
  brown_light = "#8a6648",  -- Light brown
  brown_dark = "#4a3424",   -- Dark brown
  brown_darker = "#362619", -- Darker brown
  
  -- Accent colors from authentic theme
  cream = "#d6c7b6",        -- Light cream
  caramel = "#ff9358",      -- Orange/caramel from authentic theme
  coffee = "#724E2C",       -- Coffee brown
  espresso = "#462B2B",     -- Deep espresso
  mocha = "#6F4827",        -- Mocha brown
  
  -- Syntax highlighting colors (from authentic theme)
  red = "#d90429",          -- Error red
  orange = "#ff9358",       -- Orange (functions in authentic theme)
  yellow = "#ffcc02",       -- Yellow
  green = "#049b0a",        -- Green (strings in authentic theme) 
  cyan = "#43a8ed",         -- Cyan/blue (keywords in authentic theme)
  blue = "#43a8ed",         -- Blue (same as cyan for consistency)
  purple = "#43a8ed",       -- Purple (keywords)
  magenta = "#d18ec2",      -- Magenta
  
  -- UI specific colors
  border = "#4a3f36",       -- Border color
  selection = "#3a2f26",    -- Selection background
  search = "#ff9358",       -- Search highlight (using orange)
  match_paren = "#bdae9d",  -- Matching parentheses
  
  -- Git colors
  git_add = "#049b0a",      -- Git addition (using theme green)
  git_change = "#ff9358",   -- Git modification (using theme orange)
  git_delete = "#d90429",   -- Git deletion (using theme red)
  
  -- Diagnostic colors
  error = "#d90429",        -- Error (using theme red)
  warning = "#ffcc02",      -- Warning (using theme yellow)
  info = "#43a8ed",         -- Info (using theme blue)
  hint = "#049b0a",         -- Hint (using theme green)
  
  -- Special colors
  none = "NONE",
  cursor = "#bdae9d",       -- Cursor color (using foreground)
  line_nr = "#6b5a4d",      -- Line numbers (muted brown)
  line_nr_current = "#ff9358", -- Current line number (using orange)
  visual = "#3a2f26",       -- Visual selection
  pmenu = "#32271f",        -- Popup menu background
  pmenu_sel = "#3a2f26",    -- Popup menu selection
  statusline = "#32271f",   -- Status line
  tabline = "#2a211c",      -- Tab line
}

return colors 