-- Espresso_Libre color palette
-- Based on warm coffee and brown tones characteristic of the Espresso_Libre theme

local colors = {
  -- Background colors
  bg = "#2A1B16",           -- Dark coffee background
  bg_alt = "#1F1410",       -- Darker background for sidebars
  bg_light = "#3D2B23",     -- Lighter background for panels
  bg_lighter = "#4A3529",   -- Even lighter for selections
  
  -- Foreground colors
  fg = "#E8D5C4",           -- Cream foreground
  fg_dark = "#D4C1B0",      -- Darker foreground
  fg_darker = "#C0AE9D",    -- Even darker for comments
  
  -- Coffee brown variations
  brown = "#6B4423",        -- Primary brown
  brown_light = "#8A5A35",  -- Light brown
  brown_dark = "#4D2F1A",   -- Dark brown
  brown_darker = "#362014", -- Darker brown
  
  -- Accent colors inspired by espresso
  cream = "#F4E6D7",        -- Light cream
  caramel = "#D89F55",      -- Caramel/golden highlights
  coffee = "#724E2C",       -- Coffee brown
  espresso = "#462B2B",     -- Deep espresso
  mocha = "#6F4827",        -- Mocha brown
  
  -- Syntax highlighting colors
  red = "#E85D4A",          -- Error red with brown undertone
  orange = "#F28B54",       -- Orange with warmth
  yellow = "#E8B563",       -- Warm yellow
  green = "#8AAE72",        -- Muted green
  cyan = "#7BBAB5",         -- Muted cyan
  blue = "#6B9BD1",         -- Soft blue
  purple = "#B389C4",       -- Muted purple
  magenta = "#D18EC2",      -- Soft magenta
  
  -- UI specific colors
  border = "#5A3F2E",       -- Border color
  selection = "#5D4037",    -- Selection background
  search = "#8D6E63",       -- Search highlight
  match_paren = "#BCAAA4",  -- Matching parentheses
  
  -- Git colors
  git_add = "#81C784",      -- Git addition
  git_change = "#FFB74D",   -- Git modification
  git_delete = "#E57373",   -- Git deletion
  
  -- Diagnostic colors
  error = "#E85D4A",        -- Error
  warning = "#FFB74D",      -- Warning
  info = "#6B9BD1",         -- Info
  hint = "#8AAE72",         -- Hint
  
  -- Special colors
  none = "NONE",
  cursor = "#F4E6D7",       -- Cursor color
  line_nr = "#8A5A35",      -- Line numbers
  line_nr_current = "#D89F55", -- Current line number
  visual = "#5D4037",       -- Visual selection
  pmenu = "#3D2B23",        -- Popup menu background
  pmenu_sel = "#5A3F2E",    -- Popup menu selection
  statusline = "#3D2B23",   -- Status line
  tabline = "#2A1B16",      -- Tab line
}

return colors 