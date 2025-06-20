local colors = require('espresso_libre.colors')

local M = {}

M.setup = function()
  local theme = {}

  -- Editor colors
  theme.normal = {
    a = { fg = colors.bg, bg = colors.function_name, gui = "bold" },
    b = { fg = colors.fg, bg = colors.light_bg },
    c = { fg = colors.fg, bg = colors.bg },
  }
  
  theme.insert = {
    a = { fg = colors.bg, bg = colors.string, gui = "bold" },
  }
  
  theme.visual = {
    a = { fg = colors.bg, bg = colors.keyword, gui = "bold" },
  }
  
  theme.replace = {
    a = { fg = colors.bg, bg = colors.constant, gui = "bold" },
  }
  
  theme.command = {
    a = { fg = colors.bg, bg = colors.library_function, gui = "bold" },
  }
  
  theme.inactive = {
    a = { fg = colors.method_type, bg = colors.dark_bg },
    b = { fg = colors.method_type, bg = colors.dark_bg },
    c = { fg = colors.method_type, bg = colors.dark_bg },
  }

  -- Main highlight groups
  local highlights = {
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    CursorLine = { bg = colors.line_highlight },
    CursorLineNr = { fg = colors.function_name, bg = colors.line_highlight, bold = true },
    LineNr = { fg = colors.method_type },
    SignColumn = { bg = colors.bg },
    ColorColumn = { bg = colors.line_highlight },
    Cursor = { fg = colors.bg, bg = colors.caret },
    
    -- Visual selection
    Visual = { bg = colors.selection },
    VisualNOS = { bg = colors.selection },
    
    -- Search
    Search = { fg = colors.bg, bg = colors.search },
    IncSearch = { fg = colors.bg, bg = colors.function_name },
    
    -- Popup menu
    Pmenu = { fg = colors.fg, bg = colors.light_bg },
    PmenuSel = { fg = colors.bg, bg = colors.function_name },
    PmenuSbar = { bg = colors.border },
    PmenuThumb = { bg = colors.fg },
    
    -- Status line
    StatusLine = { fg = colors.fg, bg = colors.light_bg },
    StatusLineNC = { fg = colors.method_type, bg = colors.dark_bg },
    
    -- Tab line
    TabLine = { fg = colors.method_type, bg = colors.dark_bg },
    TabLineFill = { bg = colors.dark_bg },
    TabLineSel = { fg = colors.fg, bg = colors.bg },
    
    -- Window separators
    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },
    
    -- Folds
    Folded = { fg = colors.method_type, bg = colors.light_bg },
    FoldColumn = { fg = colors.method_type, bg = colors.bg },
    
    -- Diff
    DiffAdd = { bg = colors.string, fg = colors.bg },
    DiffChange = { bg = colors.function_name, fg = colors.bg },
    DiffDelete = { bg = colors.error, fg = colors.error_fg },
    DiffText = { bg = colors.keyword, fg = colors.bg },
    
    -- Spelling
    SpellBad = { sp = colors.error, undercurl = true },
    SpellCap = { sp = colors.keyword, undercurl = true },
    SpellLocal = { sp = colors.library_function, undercurl = true },
    SpellRare = { sp = colors.constant, undercurl = true },
    
    -- Messages
    ErrorMsg = { fg = colors.error_fg, bg = colors.error },
    WarningMsg = { fg = colors.function_name },
    ModeMsg = { fg = colors.fg },
    MoreMsg = { fg = colors.string },
    Question = { fg = colors.keyword },
    
    -- Syntax highlighting
    Comment = { fg = colors.comment, italic = true },
    
    Constant = { fg = colors.library_object, bold = true },
    String = { fg = colors.string },
    Character = { fg = colors.string },
    Number = { fg = colors.number },
    Boolean = { fg = colors.constant_builtin, bold = true },
    Float = { fg = colors.number },
    
    Identifier = { fg = colors.variable },
    Function = { fg = colors.function_name, bold = true },
    
    Statement = { fg = colors.keyword, bold = true },
    Conditional = { fg = colors.keyword, bold = true },
    Repeat = { fg = colors.keyword, bold = true },
    Label = { fg = colors.keyword, bold = true },
    Operator = { fg = colors.operator },
    Keyword = { fg = colors.keyword, bold = true },
    Exception = { fg = colors.keyword, bold = true },
    
    PreProc = { fg = colors.preprocessor },
    Include = { fg = colors.preprocessor_directive, bold = true },
    Define = { fg = colors.preprocessor_directive, bold = true },
    Macro = { fg = colors.preprocessor_directive, bold = true },
    PreCondit = { fg = colors.preprocessor_directive, bold = true },
    
    Type = { fg = colors.constant, bold = true, underline = true },
    StorageClass = { fg = colors.keyword, bold = true },
    Structure = { fg = colors.constant, bold = true },
    Typedef = { fg = colors.constant, bold = true },
    
    Special = { fg = colors.string_escape },
    SpecialChar = { fg = colors.string_escape },
    Tag = { fg = colors.markup_tag, bold = true },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.comment, italic = true },
    Debug = { fg = colors.function_name },
    
    Underlined = { fg = colors.keyword, underline = true },
    Ignore = { fg = colors.method_type },
    Error = { fg = colors.error_fg, bg = colors.error },
    Todo = { fg = colors.bg, bg = colors.function_name, bold = true },
    
    -- Tree-sitter highlights
    ["@variable"] = { fg = colors.variable },
    ["@variable.builtin"] = { fg = colors.library_variable, bold = true },
    ["@variable.parameter"] = { fg = colors.variable, italic = true },
    ["@variable.member"] = { fg = colors.variable },
    
    ["@constant"] = { fg = colors.library_object, bold = true },
    ["@constant.builtin"] = { fg = colors.constant_builtin, bold = true },
    ["@constant.macro"] = { fg = colors.preprocessor_directive, bold = true },
    
    ["@module"] = { fg = colors.constant, bold = true },
    ["@label"] = { fg = colors.keyword, bold = true },
    
    ["@string"] = { fg = colors.string },
    ["@string.escape"] = { fg = colors.string_escape },
    ["@string.special"] = { fg = colors.string_escape },
    ["@string.regexp"] = { fg = colors.string_escape },
    
    ["@character"] = { fg = colors.string },
    ["@character.special"] = { fg = colors.string_escape },
    
    ["@boolean"] = { fg = colors.constant_builtin, bold = true },
    ["@number"] = { fg = colors.number },
    ["@number.float"] = { fg = colors.number },
    
    ["@function"] = { fg = colors.function_name, bold = true },
    ["@function.builtin"] = { fg = colors.library_function, bold = true },
    ["@function.call"] = { fg = colors.function_name, bold = true },
    ["@function.macro"] = { fg = colors.preprocessor_directive, bold = true },
    
    ["@function.method"] = { fg = colors.function_name, bold = true },
    ["@function.method.call"] = { fg = colors.function_name, bold = true },
    
    ["@constructor"] = { fg = colors.library_object, bold = true },
    ["@operator"] = { fg = colors.operator },
    
    -- React/JavaScript hooks (specific to hook names)
    ["@function.call.javascript"] = { fg = colors.function_name, bold = true },
    ["@function.call.typescript"] = { fg = colors.function_name, bold = true },
    ["@function.call.javascriptreact"] = { fg = colors.function_name, bold = true },
    ["@function.call.typescriptreact"] = { fg = colors.function_name, bold = true },
    
    ["@keyword"] = { fg = colors.keyword, bold = true },
    ["@keyword.function"] = { fg = colors.keyword, bold = true },
    ["@keyword.operator"] = { fg = colors.keyword, bold = true },
    ["@keyword.return"] = { fg = colors.keyword, bold = true },
    ["@keyword.conditional"] = { fg = colors.keyword, bold = true },
    ["@keyword.repeat"] = { fg = colors.keyword, bold = true },
    ["@keyword.exception"] = { fg = colors.keyword, bold = true },
    ["@keyword.import"] = { fg = colors.keyword, bold = true },
    ["@keyword.export"] = { fg = colors.keyword, bold = true },
    ["@keyword.storage"] = { fg = colors.keyword, bold = true },
    
    ["@type"] = { fg = colors.constant, bold = true },
    ["@type.builtin"] = { fg = colors.constant, bold = true },
    ["@type.definition"] = { fg = colors.constant, bold = true, underline = true },
    
    ["@attribute"] = { fg = colors.markup_xml },
    ["@property"] = { fg = colors.variable },
    ["@field"] = { fg = colors.variable },
    
    ["@parameter"] = { fg = colors.variable, italic = true },
    ["@parameter.reference"] = { fg = colors.variable, italic = true },
    
    ["@comment"] = { fg = colors.comment, italic = true },
    ["@comment.documentation"] = { fg = colors.comment, italic = true },
    
    ["@tag"] = { fg = colors.markup_tag },
    ["@tag.attribute"] = { fg = colors.variable, italic = true },
    ["@tag.delimiter"] = { fg = colors.markup_tag },
    
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.heading"] = { fg = colors.function_name, bold = true },
    ["@markup.link"] = { fg = colors.keyword, underline = true },
    ["@markup.link.url"] = { fg = colors.string, underline = true },
    ["@markup.list"] = { fg = colors.keyword },
    ["@markup.quote"] = { fg = colors.comment, italic = true },
    ["@markup.raw"] = { fg = colors.string },
    
    -- LSP semantic tokens
    ["@lsp.type.class"] = { fg = colors.constant, bold = true },
    ["@lsp.type.decorator"] = { fg = colors.preprocessor_directive },
    ["@lsp.type.enum"] = { fg = colors.constant, bold = true },
    ["@lsp.type.enumMember"] = { fg = colors.library_object, bold = true },
    ["@lsp.type.function"] = { fg = colors.function_name, bold = true },
    ["@lsp.type.interface"] = { fg = colors.constant, bold = true },
    ["@lsp.type.macro"] = { fg = colors.preprocessor_directive, bold = true },
    ["@lsp.type.method"] = { fg = colors.function_name, bold = true },
    ["@lsp.type.namespace"] = { fg = colors.constant, bold = true },
    ["@lsp.type.parameter"] = { fg = colors.variable, italic = true },
    ["@lsp.type.property"] = { fg = colors.variable },
    ["@lsp.type.struct"] = { fg = colors.constant, bold = true },
    ["@lsp.type.type"] = { fg = colors.constant, bold = true },
    ["@lsp.type.typeParameter"] = { fg = colors.constant, bold = true },
    ["@lsp.type.variable"] = { fg = colors.variable },
    
    -- LSP diagnostics
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.function_name },
    DiagnosticInfo = { fg = colors.keyword },
    DiagnosticHint = { fg = colors.string },
    
    DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.function_name, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.keyword, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.string, undercurl = true },
    
    -- LSP references
    LspReferenceText = { bg = colors.line_highlight },
    LspReferenceRead = { bg = colors.line_highlight },
    LspReferenceWrite = { bg = colors.line_highlight },
    
    -- Plugin support
    
    -- Telescope
    TelescopeNormal = { fg = colors.fg, bg = colors.bg },
    TelescopeBorder = { fg = colors.border, bg = colors.bg },
    TelescopePromptNormal = { fg = colors.fg, bg = colors.light_bg },
    TelescopePromptBorder = { fg = colors.border, bg = colors.light_bg },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.function_name },
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.string },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.keyword },
    TelescopeSelection = { fg = colors.fg, bg = colors.line_highlight },
    TelescopeSelectionCaret = { fg = colors.function_name, bg = colors.line_highlight },
    TelescopeMatching = { fg = colors.function_name, bold = true },
    
    -- NvimTree
    NvimTreeNormal = { fg = colors.fg, bg = colors.dark_bg },
    NvimTreeNormalNC = { fg = colors.fg, bg = colors.dark_bg },
    NvimTreeRootFolder = { fg = colors.function_name, bold = true },
    NvimTreeFolderName = { fg = colors.keyword },
    NvimTreeFolderIcon = { fg = colors.keyword },
    NvimTreeEmptyFolderName = { fg = colors.method_type },
    NvimTreeOpenedFolderName = { fg = colors.keyword, bold = true },
    NvimTreeExecFile = { fg = colors.string, bold = true },
    NvimTreeOpenedFile = { fg = colors.fg, bold = true },
    NvimTreeSpecialFile = { fg = colors.function_name, bold = true },
    NvimTreeImageFile = { fg = colors.constant },
    NvimTreeMarkdownFile = { fg = colors.keyword },
    NvimTreeIndentMarker = { fg = colors.border },
    NvimTreeGitDirty = { fg = colors.function_name },
    NvimTreeGitNew = { fg = colors.string },
    NvimTreeGitDeleted = { fg = colors.error },
    NvimTreeGitStaged = { fg = colors.string },
    NvimTreeGitMerge = { fg = colors.constant },
    NvimTreeGitRenamed = { fg = colors.keyword },
    
    -- GitSigns
    GitSignsAdd = { fg = colors.string },
    GitSignsChange = { fg = colors.function_name },
    GitSignsDelete = { fg = colors.error },
    GitSignsAddNr = { fg = colors.string },
    GitSignsChangeNr = { fg = colors.function_name },
    GitSignsDeleteNr = { fg = colors.error },
    GitSignsAddLn = { bg = colors.string, fg = colors.bg },
    GitSignsChangeLn = { bg = colors.function_name, fg = colors.bg },
    GitSignsDeleteLn = { bg = colors.error, fg = colors.error_fg },
    
    -- WhichKey
    WhichKey = { fg = colors.function_name, bold = true },
    WhichKeyGroup = { fg = colors.keyword },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeySeperator = { fg = colors.method_type },
    WhichKeyFloat = { bg = colors.light_bg },
    WhichKeyBorder = { fg = colors.border, bg = colors.light_bg },
    
    -- BufferLine
    BufferLineIndicatorSelected = { fg = colors.function_name },
    BufferLineFill = { bg = colors.dark_bg },
    BufferLineBackground = { fg = colors.method_type, bg = colors.dark_bg },
    BufferLineBufferSelected = { fg = colors.fg, bg = colors.bg, bold = true },
    BufferLineBufferVisible = { fg = colors.fg, bg = colors.light_bg },
    BufferLineCloseButton = { fg = colors.method_type, bg = colors.dark_bg },
    BufferLineCloseButtonSelected = { fg = colors.error, bg = colors.bg },
    BufferLineCloseButtonVisible = { fg = colors.method_type, bg = colors.light_bg },
    
    -- Indent Blankline
    IndentBlanklineChar = { fg = colors.border },
    IndentBlanklineContextChar = { fg = colors.function_name },
    
    -- Leap
    LeapMatch = { fg = colors.bg, bg = colors.function_name, bold = true },
    LeapLabelPrimary = { fg = colors.bg, bg = colors.function_name, bold = true },
    LeapLabelSecondary = { fg = colors.bg, bg = colors.string, bold = true },
    
    -- Notify
    NotifyBackground = { bg = colors.bg },
    NotifyERRORBorder = { fg = colors.error },
    NotifyWARNBorder = { fg = colors.function_name },
    NotifyINFOBorder = { fg = colors.keyword },
    NotifyDEBUGBorder = { fg = colors.method_type },
    NotifyTRACEBorder = { fg = colors.constant },
    NotifyERRORIcon = { fg = colors.error },
    NotifyWARNIcon = { fg = colors.function_name },
    NotifyINFOIcon = { fg = colors.keyword },
    NotifyDEBUGIcon = { fg = colors.method_type },
    NotifyTRACEIcon = { fg = colors.constant },
    NotifyERRORTitle = { fg = colors.error },
    NotifyWARNTitle = { fg = colors.function_name },
    NotifyINFOTitle = { fg = colors.keyword },
    NotifyDEBUGTitle = { fg = colors.method_type },
    NotifyTRACETitle = { fg = colors.constant },
    
    -- Bracket-specific highlighting
    -- Punctuation and brackets (Tree-sitter)
    ["@punctuation.bracket"] = { fg = colors.fg },  -- Default brackets (parentheses)
    ["@punctuation.delimiter"] = { fg = colors.fg },  -- Commas, semicolons, etc.
    
    -- Specific bracket overrides (if supported by parser)
    ["@punctuation.special"] = { fg = colors.function_name },  -- Special punctuation
    
    -- Legacy vim syntax for brackets (using syntax matching)
    Delimiter = { fg = colors.fg },  -- Default delimiters
  }

  -- Setup bracket-specific highlighting using syntax groups
  -- This works more reliably than Tree-sitter for bracket colors
  vim.api.nvim_create_autocmd("Syntax", {
    pattern = "*",
    callback = function()
      -- Define syntax groups for specific bracket types
      vim.cmd([[
        " Curly braces {} - yellow/orange
        syntax match CurlyBraces /[{}]/
        " Square brackets [] - magenta/purple  
        syntax match SquareBrackets /[\[\]]/
        " Parentheses () - default foreground
        syntax match Parentheses /[()]/
      ]])
      
      -- Apply colors to the syntax groups
      vim.api.nvim_set_hl(0, "CurlyBraces", { fg = colors.function_name })
      vim.api.nvim_set_hl(0, "SquareBrackets", { fg = colors.constant_builtin }) 
      vim.api.nvim_set_hl(0, "Parentheses", { fg = colors.fg })
    end,
  })

  -- Setup hook-specific highlighting for React/JavaScript
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    callback = function()
      -- Define syntax groups for React hooks (functions starting with "use")
      vim.cmd([[
        syntax match ReactHook /\<use[A-Z][a-zA-Z0-9]*\>/
      ]])
      
      -- Apply orange color to hook names
      vim.api.nvim_set_hl(0, "ReactHook", { fg = colors.function_name, bold = true })
    end,
  })

  -- Setup specific keyword highlighting for import/export/const
  vim.api.nvim_create_autocmd("Syntax", {
    pattern = "*",
    callback = function()
      -- Define syntax groups for specific keywords
      vim.cmd([[
        syntax keyword ImportExportKeywords import export const let var
      ]])
      
      -- Apply light blue color to these keywords (same as function keyword)
      vim.api.nvim_set_hl(0, "ImportExportKeywords", { fg = colors.keyword, bold = true })
    end,
  })

  return highlights, theme
end

return M 