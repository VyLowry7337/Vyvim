local M = {}

local config = require('vyrc')
local colors = require('theme.palettes.' .. config.theme.palette)
local transparent = config.theme.transparent
local base = transparent and colors.none or colors.base

M.bg = {
  -- Editor
  Normal = { fg = colors.text, bg = base },
  NormalFloat = { fg = colors.text, bg = base },
  FloatBorder = { fg = colors.blue, bg = base },
  WinSeparator = { fg = colors.mantle },
  VertSplit = { fg = colors.surface0 },
  SignColumn = { bg = base },
  EndOfBuffer = { fg = base },
  Cursor = { bg = colors.text, fg = colors.crust },
  CursorLine = { bg = base },
  CursorColumn = { bg = base },
  ColorColumn = { bg = base },
  LineNr = { fg = colors.surface1 },
  CursorLineNr = { fg = colors.yellow },
  Visual = { bg = colors.surface2 },
  VisualNOS = { bg = colors.surface2 },

  -- Popup menu
  Pmenu = { fg = colors.text, bg = base },
  PmenuSel = { fg = base, bg = colors.green },
  PmenuSbar = { bg = base },
  PmenuThumb = { bg = colors.surface2 },

  -- Search
  Search = { bg = colors.mauve, fg = colors.crust, bold = true, italic = true },
  IncSearch = { bg = colors.green, fg = colors.crust, bold = true, italic = true },
  Substitute = { bg = colors.blue, fg = colors.crust, bold = true },
  MatchParen = { bg = colors.none, fg = colors.lavender, bold = true, link = '' },

  -- Folds
  Folded = { fg = colors.overlay0, bg = base },
  FoldColumn = { fg = colors.overlay0 },

  -- Diff
  DiffAdd = { bg = '#2A304B' },
  DiffChange = { bg = '#384268' },
  DiffDelete = { bg = '#34232C' },
  DiffText = { bg = '#484466' },

  -- Messages
  ErrorMsg = { fg = colors.red },
  WarningMsg = { fg = colors.yellow },
  ModeMsg = { fg = colors.text, bold = true },
  MoreMsg = { fg = colors.green },
  Question = { fg = colors.green },

  -- Spelling
  SpellBad = { sp = colors.red, undercurl = true },
  SpellCap = { sp = colors.yellow, undercurl = true },
  SpellLocal = { sp = colors.blue, undercurl = true },
  SpellRare = { sp = colors.mauve, undercurl = true },

  -- Tabline (built-in)
  TabLine = { fg = colors.overlay0, bg = base },
  TabLineFill = { bg = base },
  TabLineSel = { fg = colors.text, bg = base },

  -- Bufline (Gn*)
  GnTabFill = { bg = base },
  GnBufOn = { fg = colors.text, bg = base },
  GnBufOff = { fg = colors.overlay0, bg = base },
  GnBufOnMod = { fg = colors.green, bg = base },
  GnBufOffMod = { fg = colors.green, bg = base },
  GnTabOn = { fg = colors.blue, bg = colors.blue, bold = true },
  GnTabOff = { fg = colors.overlay0, bg = base },
  GnWinOn = { fg = colors.text, bg = base },
  GnWinOff = { fg = colors.overlay0, bg = base },

  -- Statusline
  StatusLine = { bg = base, fg = colors.none },
  StatusLineNC = { bg = base, fg = colors.none },

  -- Window
  WinBar = { bg = base },
  WinBarNC = { bg = base },

  -- Misc
  Directory = { fg = colors.blue },
  Title = { fg = colors.blue, bold = true },
  NonText = { fg = colors.surface2 },
  SpecialKey = { fg = colors.surface2 },
  Conceal = { fg = colors.overlay0 },
}

-- Syntax highlights
M.syntax = {
  Comment = { fg = colors.overlay0, italic = true },
  Constant = { fg = colors.peach },
  String = { fg = colors.green },
  Character = { fg = colors.teal },
  Number = { fg = colors.peach },
  Boolean = { fg = colors.peach, italic = true },
  Float = { fg = colors.peach },

  Identifier = { fg = colors.text },
  Function = { fg = colors.blue },

  Statement = { fg = colors.mauve },
  Conditional = { fg = colors.mauve },
  Repeat = { fg = colors.mauve },
  Label = { fg = colors.sapphire },
  Operator = { fg = colors.sky },
  Keyword = { fg = colors.mauve, italic = true },
  Exception = { fg = colors.mauve },

  PreProc = { fg = colors.maroon },
  Include = { fg = colors.mauve, italic = true },
  Define = { fg = colors.mauve },
  Macro = { fg = colors.mauve },
  PreCondit = { fg = colors.mauve },

  Type = { fg = colors.yellow, italic = true },
  StorageClass = { fg = colors.yellow, italic = true },
  Structure = { fg = colors.yellow, italic = true },
  Typedef = { fg = colors.yellow, italic = true },

  Special = { fg = colors.maroon },
  SpecialChar = { fg = colors.maroon },
  Tag = { fg = colors.peach },
  Delimiter = { fg = colors.text },
  SpecialComment = { fg = colors.overlay0 },
  Debug = { fg = colors.red },

  Underlined = { underline = false },
  Ignore = {},
  Error = { fg = colors.red },
  Todo = { fg = colors.mauve, bold = true },
}

M.treesitter = {
  ['@variable'] = { fg = colors.text },
  ['@variable.builtin'] = { fg = colors.red },
  ['@variable.parameter'] = { fg = colors.maroon },
  ['@variable.member'] = { fg = colors.lavender },
  ['@variable.member.key'] = { fg = colors.sky },

  ['@module'] = { fg = colors.yellow, italic = true },

  ['@constant'] = { fg = colors.peach },
  ['@constant.builtin'] = { fg = colors.peach },
  ['@constant.macro'] = { fg = colors.mauve },

  ['@string'] = { fg = colors.green },
  ['@string.regex'] = { fg = colors.peach },
  ['@string.regexp'] = { link = '@string.regex' },
  ['@string.escape'] = { fg = colors.maroon },
  ['@character'] = { fg = colors.teal },
  ['@number'] = { fg = colors.peach },
  ['@number.float'] = { fg = colors.peach },

  ['@annotation'] = { fg = colors.yellow },
  ['@attribute'] = { link = 'Constant' },
  ['@error'] = { fg = colors.red },

  ['@keyword'] = { fg = colors.mauve, italic = true },
  ['@keyword.function'] = { fg = colors.mauve, italic = true },
  ['@keyword.return'] = { fg = colors.mauve, italic = true },
  ['@keyword.operator'] = { fg = colors.lavender, italic = true },
  ['@keyword.import'] = { fg = colors.mauve, italic = true },
  ['@keyword.conditional'] = { fg = colors.mauve, italic = true },
  ['@keyword.conditional.ternary'] = { fg = colors.lavender, italic = true },
  ['@keyword.repeat'] = { fg = colors.mauve, italic = true },
  ['@keyword.storage'] = { fg = colors.yellow, italic = true },
  ['@keyword.directive.define'] = { fg = colors.mauve, italic = true },
  ['@keyword.directive'] = { fg = colors.mauve, italic = true },
  ['@keyword.exception'] = { fg = colors.mauve, italic = true },

  ['@function'] = { fg = colors.blue },
  ['@function.builtin'] = { fg = colors.blue },
  ['@function.macro'] = { fg = colors.blue },
  ['@function.call'] = { fg = colors.blue },
  ['@function.method'] = { fg = colors.blue },
  ['@function.method.call'] = { fg = colors.blue },
  ['@constructor'] = { fg = colors.blue },

  ['@operator'] = { fg = colors.sky },
  ['@reference'] = { fg = colors.text },
  ['@punctuation.bracket'] = { fg = colors.text },
  ['@punctuation.delimiter'] = { fg = colors.peach },
  ['@symbol'] = { fg = colors.green },
  ['@tag'] = { fg = colors.peach },
  ['@tag.attribute'] = { fg = colors.yellow },
  ['@tag.delimiter'] = { fg = colors.sapphire },
  ['@text'] = { fg = colors.text },
  ['@text.emphasis'] = { fg = colors.mauve, italic = true },
  ['@text.strike'] = { fg = colors.overlay0, strikethrough = true },
  ['@type.builtin'] = { fg = colors.yellow, italic = true },
  ['@definition'] = { sp = colors.overlay0, underline = false },
  ['@scope'] = { bold = true },
  ['@string.documentation'] = { fg = colors.green, italic = true },
  ['@property'] = { fg = colors.sky },

  RenderMarkdownCode = { bg = colors.mantle },
  RenderMarkdownCodeBorder = { bg = colors.mantle },
  RenderMarkdownCodeInline = { bg = colors.surface0 },
  RenderMarkdownH1 = { fg = colors.red },
  RenderMarkdownH2 = { fg = colors.peach },
  RenderMarkdownH3 = { fg = colors.yellow },
  RenderMarkdownH4 = { fg = colors.green },
  RenderMarkdownH5 = { fg = colors.sapphire },
  RenderMarkdownH6 = { fg = colors.lavender },
  RenderMarkdownH1Bg = { fg = colors.base, bg = colors.red },
  RenderMarkdownH2Bg = { fg = colors.base, bg = colors.peach },
  RenderMarkdownH3Bg = { fg = colors.base, bg = colors.yellow },
  RenderMarkdownH4Bg = { fg = colors.base, bg = colors.green },
  RenderMarkdownH5Bg = { fg = colors.base, bg = colors.sapphire },
  RenderMarkdownH6Bg = { fg = colors.base, bg = colors.lavender },
  RenderMarkdownBullet = { fg = colors.sky },
  RenderMarkdownTableHead = { fg = colors.blue },
  RenderMarkdownTableRow = { fg = colors.lavender },
  RenderMarkdownSuccess = { fg = colors.green },
  RenderMarkdownInfo = { fg = colors.sky },
  RenderMarkdownHint = { fg = colors.teal },
  RenderMarkdownWarn = { fg = colors.yellow },
  RenderMarkdownError = { fg = colors.red },
  ['@markup.heading'] = { fg = colors.peach, bold = true },
  ['@markup.heading.1'] = { fg = colors.red, bold = true },
  ['@markup.heading.2'] = { fg = colors.peach, bold = true },
  ['@markup.heading.3'] = { fg = colors.yellow, bold = true },
  ['@markup.heading.4'] = { fg = colors.green, bold = true },
  ['@markup.heading.5'] = { fg = colors.sapphire, bold = true },
  ['@markup.heading.6'] = { fg = colors.lavender, bold = true },
  ['@markup.strong'] = { fg = colors.red, bold = true },
  ['@markup.italic'] = { fg = colors.red, italic = true },
  ['@markup.list'] = { fg = colors.teal },
  ['@markup.list.checked'] = { fg = colors.green },
  ['@markup.list.unchecked'] = { fg = colors.overlay1 },
  ['@markup.raw'] = { fg = colors.lavender },
  ['@markup.quote'] = { fg = colors.pink },
  ['@markup'] = { fg = colors.text },
  ['@markup.math'] = { fg = colors.blue },
  ['@markup.environment'] = { fg = colors.pink },
  ['@markup.environment.name'] = { fg = colors.blue },
  ['@markup.link'] = { fg = colors.lavender },
  ['@markup.link.label'] = { fg = colors.lavender },
  ['@markup.link.url'] = { fg = colors.blue, italic = true, underline = true },

  ['@overlay0'] = { fg = colors.overlay0, italic = true },
  ['@overlay0.todo'] = { fg = base, bg = colors.yellow, bold = true },
  ['@overlay0.warning'] = { fg = base, bg = colors.peach, italic = true },
  ['@overlay0.note'] = { fg = base, bg = colors.sapphire, italic = true },
  ['@overlay0.danger'] = { fg = base, bg = colors.red, italic = true },

  ['@diff.plus'] = { fg = colors.green },
  ['@diff.minus'] = { fg = colors.red },
  ['@diff.delta'] = { fg = colors.peach },

  -- Python
  ['@constructor.python'] = { fg = colors.sky },
  ['@type.python'] = { link = 'Type' },
  ['@module.python'] = { link = '@module' },
  ['@function.call.python'] = { link = 'Function' },
  ['@attribute.python'] = { link = 'Constant' },
  ['@operator.python'] = { link = 'Operator' },
  ['@string.python'] = { link = 'String' },
  ['@string.documentation.python'] = { link = '@string.documentation' },
}

M.lazy = {
  LazyH1 = { bg = colors.green, fg = colors.crust },
  LazyH2 = { fg = colors.red, bold = true, underline = false },
  LazyButton = { bg = colors.surface0, fg = colors.surface2 },
  LazyReasonPlugin = { fg = colors.red },
  LazyValue = { fg = colors.teal },
  LazyDir = { fg = colors.text },
  LazyUrl = { fg = colors.text },
  LazyCommit = { fg = colors.green },
  LazyNoCond = { fg = colors.red },
  LazySpecial = { fg = colors.blue },
  LazyReasonFt = { fg = colors.mauve },
  LazyOperator = { fg = colors.text },
  LazyReasonKeys = { fg = colors.teal },
  LazyTaskOutput = { fg = colors.text },
  LazyCommitIssue = { fg = colors.peach },
  LazyReasonEvent = { fg = colors.yellow },
  LazyReasonStart = { fg = colors.text },
  LazyReasonRuntime = { fg = colors.blue },
  LazyReasonCmd = { fg = colors.yellow },
  LazyReasonSource = { fg = colors.sky },
  LazyReasonImport = { fg = colors.text },
  LazyProgressDone = { fg = colors.green },
}

M.mason = {
  MasonNormal = { fg = colors.text, bg = base },
  MasonHeader = { bg = colors.green, fg = colors.crust, bold = true },
  MasonHeaderSecondary = { bg = colors.blue, fg = colors.crust, bold = true },
  MasonHighlight = { fg = colors.blue },
  MasonHighlightBlock = { bg = colors.blue, fg = colors.crust },
  MasonHighlightBlockBold = { bg = colors.blue, fg = colors.crust, bold = true },
  MasonHighlightSecondary = { fg = colors.yellow },
  MasonHighlightBlockSecondary = { bg = colors.yellow, fg = colors.crust },
  MasonHighlightBlockBoldSecondary = { bg = colors.yellow, fg = colors.crust, bold = true },
  MasonMuted = { fg = colors.overlay0 },
  MasonMutedBlock = { bg = colors.surface2, fg = colors.text },
  MasonMutedBlockBold = { bg = colors.surface2, fg = colors.text, bold = true },
  MasonError = { fg = colors.red },
  MasonWarning = { fg = colors.yellow },
  MasonHeading = { bold = true },
}

M.misc = {
  Added = { fg = colors.green },
  Removed = { fg = colors.red },
  Changed = { fg = colors.yellow },
  MatchWord = { bg = colors.surface2, fg = colors.text },
  QuickFixLine = { bg = base },
  healthSuccess = { bg = colors.green, fg = colors.crust },
  NvimInternalError = { fg = colors.red },
  DevIconDefault = { fg = colors.red },
  FloatTitle = { fg = colors.text, bg = colors.surface2 },
}

local stl_style = config.style or 'compact'

local stl_compact = {
  GnNormalMode = { fg = colors.green, bold = true },
  GnVisualMode = { fg = colors.blue, bold = true },
  GnInsertMode = { fg = colors.lavender, bold = true },
  GnTerminalMode = { fg = colors.green, bold = true },
  GnNTerminalMode = { fg = colors.yellow, bold = true },
  GnReplaceMode = { fg = colors.peach, bold = true },
  GnConfirmMode = { fg = colors.teal, bold = true },
  GnCommandMode = { fg = colors.peach, bold = true },
  GnSelectMode = { fg = colors.blue, bold = true },

  GnTelescopeMode = { fg = colors.yellow, bold = true },
  GnExplorerMode = { fg = colors.sky, bold = true },
  GnLazyGitMode = { fg = colors.sky, bold = true },
  GnLazyNvimMode = { fg = colors.mauve, bold = true },

  GnFile = { fg = colors.text },
  GnFileIcon = { fg = colors.text },

  GnGitIcon = { fg = colors.mauve },
  GnGitText = { fg = colors.text },
  GnLsp = { fg = colors.blue },
  GnLspMsg = { fg = colors.green },

  GnLspIcon = { fg = colors.blue },
  GnLspText = { fg = colors.text },
  GnCwdIcon = { fg = colors.peach },
  GnCwdText = { fg = colors.text },
  GnCursorIcon = { fg = colors.peach },
  GnCursorText = { fg = colors.text },
  GnFolderIcon = { fg = colors.red },
  GnFolderText = { fg = colors.text },
  GnQfIcon = { fg = colors.mauve },
  GnQfText = { fg = colors.overlay2 },

  GnLspError = { fg = colors.red },
  GnLspWarning = { fg = colors.yellow },
  GnLspHints = { fg = colors.mauve },
  GnLspInfo = { fg = colors.green },
  GnLspProgress = { fg = colors.surface2 },

  SnacksPickerTitle = { fg = colors.red, bold = true },
  SnacksPickerInputTitle = { fg = colors.red, bold = true },
  SnacksPickerPreviewTitle = { fg = colors.green, bold = true },
}

local stl_block = {
  GnNormalMode = { bg = colors.green, fg = colors.crust, bold = true },
  GnVisualMode = { bg = colors.blue, fg = colors.crust, bold = true },
  GnInsertMode = { bg = colors.lavender, fg = colors.crust, bold = true },
  GnTerminalMode = { bg = colors.green, fg = colors.crust, bold = true },
  GnNTerminalMode = { bg = colors.yellow, fg = colors.crust, bold = true },
  GnReplaceMode = { bg = colors.peach, fg = colors.crust, bold = true },
  GnConfirmMode = { bg = colors.teal, fg = colors.crust, bold = true },
  GnCommandMode = { bg = colors.peach, fg = colors.crust, bold = true },
  GnSelectMode = { bg = colors.blue, fg = colors.crust, bold = true },

  GnTelescopeMode = { bg = colors.yellow, fg = colors.crust, bold = true },
  GnExplorerMode = { bg = colors.red, fg = colors.crust, bold = true },
  GnLazyGitMode = { bg = colors.blue, fg = colors.crust, bold = true },
  GnLazyNvimMode = { bg = colors.mauve, fg = colors.crust, bold = true },

  GnFileIcon = { bg = colors.none, fg = colors.text },
  GnFile = { bg = colors.none, fg = colors.text },

  GnGitIcon = { fg = colors.mauve },
  GnGitText = { fg = colors.text },
  GnLsp = { bg = colors.none, fg = colors.text },
  GnLspMsg = { bg = colors.green, fg = colors.crust },

  GnLspIcon = { bg = colors.red, fg = colors.crust },
  GnLspText = { bg = colors.none, fg = colors.red },
  GnCwdIcon = { bg = colors.peach, fg = colors.crust },
  GnCwdText = { bg = colors.none, fg = colors.peach },
  GnCursorIcon = { bg = colors.peach, fg = colors.crust },
  GnCursorText = { bg = colors.none, fg = colors.peach },
  GnFolderIcon = { bg = colors.red, fg = colors.crust },
  GnFolderText = { bg = colors.base, fg = colors.red },
  GnQfIcon = { bg = colors.mauve, fg = colors.crust },
  GnQfText = { bg = colors.none, fg = colors.mauve },

  GnLspError = { fg = colors.red },
  GnLspWarning = { fg = colors.yellow },
  GnLspHints = { fg = colors.mauve },
  GnLspInfo = { fg = colors.green },
  GnLspProgress = { fg = colors.surface2 },

  SnacksPickerTitle = { bg = colors.red, fg = colors.crust, bold = true },
  SnacksPickerInputTitle = { bg = colors.red, fg = colors.crust, bold = true },
  SnacksPickerPreviewTitle = { bg = colors.green, fg = colors.crust, bold = true },
}

M.statusline = stl_style == 'block' and stl_block or stl_compact

M.navic = {
  NavicIconsConstant = { fg = colors.peach, bg = colors.none },
  NavicIconsFunction = { fg = colors.blue, bg = colors.none },
  NavicIconsIdentifier = { fg = colors.red, bg = colors.none },
  NavicIconsField = { fg = colors.red, bg = colors.none },
  NavicIconsVariable = { fg = colors.mauve, bg = colors.none },
  NavicIconsSnippet = { fg = colors.red, bg = colors.none },
  NavicIconsText = { fg = colors.green, bg = colors.none },
  NavicIconsStructure = { fg = colors.mauve, bg = colors.none },
  NavicIconsType = { fg = colors.yellow, bg = colors.none },
  NavicIconsKeyword = { fg = colors.text, bg = colors.none },
  NavicIconsMethod = { fg = colors.blue, bg = colors.none },
  NavicIconsConstructor = { fg = colors.blue, bg = colors.none },
  NavicIconsFolder = { fg = colors.text, bg = colors.none },
  NavicIconsModule = { fg = colors.yellow, bg = colors.none },
  NavicIconsProperty = { fg = colors.red, bg = colors.none },
  NavicIconsEnum = { fg = colors.blue, bg = colors.none },
  NavicIconsUnit = { fg = colors.mauve, bg = colors.none },
  NavicIconsClass = { fg = colors.teal, bg = colors.none },
  NavicIconsFile = { fg = colors.text, bg = colors.none },
  NavicIconsInterface = { fg = colors.green, bg = colors.none },
  NavicIconsColor = { fg = colors.text, bg = colors.none },
  NavicIconsReference = { fg = colors.text, bg = colors.none },
  NavicIconsEnumMember = { fg = colors.mauve, bg = colors.none },
  NavicIconsStruct = { fg = colors.mauve, bg = colors.none },
  NavicIconsValue = { fg = colors.sky, bg = colors.none },
  NavicIconsEvent = { fg = colors.yellow, bg = colors.none },
  NavicIconsOperator = { fg = colors.text, bg = colors.none },
  NavicIconsTypeParameter = { fg = colors.red, bg = colors.none },
  NavicIconsNamespace = { fg = colors.teal, bg = colors.none },
  NavicIconsPackage = { fg = colors.green, bg = colors.none },
  NavicIconsString = { fg = colors.green, bg = colors.none },
  NavicIconsNumber = { fg = colors.peach, bg = colors.none },
  NavicIconsBoolean = { fg = colors.peach, bg = colors.none },
  NavicIconsArray = { fg = colors.blue, bg = colors.none },
  NavicIconsObject = { fg = colors.mauve, bg = colors.none },
  NavicIconsKey = { fg = colors.red, bg = colors.none },
  NavicIconsNull = { fg = colors.sky, bg = colors.none },
  NavicText = { fg = colors.surface2, bg = colors.none },
  NavicSeparator = { fg = colors.red, bg = colors.none },
}

M.diagnostics = {
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.text },
  DiagnosticHint = { fg = colors.mauve },
  DiagnosticOk = { fg = colors.green },

  -- DiagnosticVirtualTextError = { fg = colors.peach, link = "" },
  -- DiagnosticVirtualTextWarn = { fg = colors.yellow, link = "" },
  -- DiagnosticVirtualTextInfo = { fg = colors.teal, link = "" },
  -- DiagnosticVirtualTextHint = { fg = colors.lavender, link = "" },
  -- DiagnosticVirtualTextOk = { fg = colors.green, link = "" },
  --
  -- DiagnosticUnderlineError = { sp = colors.red, undercurl = true, italic = true },
  -- DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true, italic = true },
  -- DiagnosticUnderlineInfo = { sp = colors.text, undercurl = true, italic = true },
  -- DiagnosticUnderlineHint = { sp = colors.mauve, undercurl = true, italic = true },
  -- DiagnosticUnderlineOk = { sp = colors.green, undercurl = true, italic = true },
}

-- LSP
M.lsp = {
  LspReferenceText = { bg = base },
  LspReferenceRead = { bg = base },
  LspReferenceWrite = { bg = base },
  LspSignatureActiveParameter = { fg = colors.peach, bold = true },
  LspInlayHint = { fg = colors.overlay0 },
}

M.dashboard = {
  GnDashAscii = { bg = colors.none, fg = colors.lavender },
  GnDashIcon = { bg = colors.none, fg = colors.blue },
  GnDashLabel = { bg = colors.none, fg = colors.text, bold = true, italic = true },
  GnDashKey = { bg = colors.none, fg = colors.peach, italic = true },
  GnDashDesc = { bg = colors.none, fg = colors.overlay0, italic = true },
  GnDashFooter = { bg = colors.none, fg = colors.overlay0, italic = true },
  GnDashSep = { bg = colors.none, fg = base },
  GnDashIconProject = { bg = colors.none, fg = colors.green },
  GnDashIconHistory = { bg = colors.none, fg = colors.blue },
  GnDashIconTools = { bg = colors.none, fg = colors.yellow },
  GnDashIconGit = { bg = colors.none, fg = colors.mauve },
  GnDashIconSystem = { bg = colors.none, fg = colors.red },
  GnDashFocusLabel = { bg = base, fg = colors.text, bold = true },
  GnDashFocusIcon = { bg = base, fg = colors.text, bold = true },
  GnDashFocusKey = { bg = base, fg = colors.peach, bold = true },
  GnDashFocusDesc = { bg = base, fg = colors.overlay0 },
  GnDashFocusCell = { bg = base },
}

M.explorer = {
  GnExplorerNormal = { bg = base },
  GnExplorerTitle = { link = 'SnacksPickerInputTitle' },
  GnExplorerSep = { fg = base, bg = base },
}

M.plugins = {
  ['@property'] = { fg = colors.peach },
  ['@parameter'] = { fg = colors.peach },
  ['@operator'] = { fg = colors.sky },
  ['@punctuation.bracket'] = { fg = colors.peach },
  ['@function.builtin'] = { fg = colors.blue },
  ['@punctuation.delimiter'] = { fg = colors.sky },
  ['@namespace.builtin'] = { fg = colors.yellow },
  ['@overlay0'] = { fg = colors.overlay0, italic = true },

  LuaDocumentTag = { fg = colors.mauve },
  LuaDocumentParam = { fg = colors.peach },
  LuaGlobalVim = { fg = colors.yellow },
  ['@variable.member.lua'] = { fg = colors.red, link = '' },

  ['@type.qualifier.tsx'] = { fg = colors.mauve, link = '' },
  ['@type.qualifier.vue'] = { fg = colors.mauve, link = '' },
  ['@type.qualifier.typescript'] = { fg = colors.mauve, link = '' },
  ['@type.qualifier.javascript'] = { fg = colors.mauve, link = '' },
  ['@type.qualifier.astro'] = { fg = colors.mauve, link = '' },

  ['@parameter.tsx'] = { fg = colors.peach, link = '' },
  ['@parameter.vue'] = { fg = colors.peach, link = '' },
  ['@parameter.javascript'] = { fg = colors.peach, link = '' },
  ['@parameter.typescript'] = { fg = colors.peach, link = '' },

  ['@variable.parameter.tsx'] = { fg = colors.peach, link = '' },
  ['@variable.parameter.vue'] = { fg = colors.peach, link = '' },
  ['@variable.parameter.javascript'] = { fg = colors.peach, link = '' },
  ['@variable.parameter.typescript'] = { fg = colors.peach, link = '' },
  ['@variable.parameter.lua'] = { fg = colors.peach, link = '' },
  ['@variable.parameter.java'] = { fg = colors.peach, link = '' },

  ['@property.tsx'] = { fg = colors.peach },
  ['@property.vue'] = { fg = colors.peach },
  ['@property.javascript'] = { fg = colors.peach },
  ['@property.typescript'] = { fg = colors.peach },
  ['@property.html'] = { fg = colors.peach },

  ['@tag.tsx'] = { fg = colors.red },
  ['@tag.vue'] = { fg = colors.red },
  ['@tag.javascript'] = { fg = colors.red },
  ['@tag.typescript'] = { fg = colors.red },
  ['@tag.html'] = { fg = colors.red },
  ['@tag.astro'] = { fg = colors.red },
  ['@type.astro'] = { link = '@tag.astro' },

  ['@tag.builtin.tsx'] = { fg = colors.red },
  ['@tag.builtin.javascript'] = { fg = colors.red },
  ['@tag.builtin.astro'] = { fg = colors.red },

  ['@constructor.tsx'] = { fg = colors.red, link = '' },
  ['@constructor.vue'] = { fg = colors.red, link = '' },
  ['@constructor.javascript'] = { fg = colors.red, link = '' },
  ['@constructor.typescript'] = { fg = colors.red, link = '' },
  ['@constructor.astro'] = { fg = colors.red, link = '' },

  ['@operator.tsx'] = { fg = colors.sky },
  ['@operator.vue'] = { fg = colors.sky },
  ['@operator.javascript'] = { fg = colors.sky },
  ['@operator.typescript'] = { fg = colors.sky },
  ['@operator.html'] = { fg = colors.sky },
  ['@operator.astro'] = { fg = colors.sky },

  ['@punctuation.special.tsx'] = { fg = colors.mauve },
  ['@punctuation.special.vue'] = { fg = colors.mauve },
  ['@punctuation.special.javascript'] = { fg = colors.mauve },
  ['@punctuation.special.typescript'] = { fg = colors.mauve },
  ['@punctuation.special.astro'] = { fg = colors.mauve },

  ['@tag.attribute.tsx'] = { fg = colors.peach },
  ['@tag.attribute.vue'] = { fg = colors.peach },
  ['@tag.attribute.javascript'] = { fg = colors.peach },
  ['@tag.attribute.typescript'] = { fg = colors.peach },
  ['@tag.attribute.html'] = { fg = colors.peach },
  ['@tag.attribute.astro'] = { fg = colors.peach },

  ['@tag.delimiter.tsx'] = { fg = colors.sky },
  ['@tag.delimiter.vue'] = { fg = colors.sky },
  ['@tag.delimiter.javascript'] = { fg = colors.sky },
  ['@tag.delimiter.typescript'] = { fg = colors.sky },
  ['@tag.delimiter.html'] = { fg = colors.sky },
  ['@tag.delimiter.astro'] = { fg = colors.sky },

  ['@punctuation.delimiter.tsx'] = { fg = colors.sky },
  ['@punctuation.delimiter.vue'] = { fg = colors.sky },
  ['@punctuation.delimiter.javascript'] = { fg = colors.sky },
  ['@punctuation.delimiter.typescript'] = { fg = colors.sky },
  ['@punctuation.delimiter.html'] = { fg = colors.sky },
  ['@punctuation.delimiter.astro'] = { fg = colors.sky },

  ['@punctuation.bracket.tsx'] = { fg = colors.sky },
  ['@punctuation.bracket.vue'] = { fg = colors.sky },
  ['@punctuation.bracket.javascript'] = { fg = colors.sky },
  ['@punctuation.bracket.typescript'] = { fg = colors.sky },
  ['@punctuation.bracket.astro'] = { fg = colors.sky },
  ['@punctuation.bracket.lua'] = { fg = colors.sky },
  ['@punctuation.bracket.java'] = { fg = colors.sky },

  ['@text.uri.tsx'] = { fg = colors.none },
  ['@text.uri.vue'] = { fg = colors.none },
  ['@text.uri.javascript'] = { fg = colors.none },
  ['@text.uri.typescript'] = { fg = colors.none },
  ['@text.uri.html'] = { fg = colors.none },
  ['@variable.member.typescript'] = { fg = colors.red, link = '' },
  ['@variable.member.javascript'] = { fg = colors.red, link = '' },
  ['@variable.member.tsx'] = { fg = colors.red, link = '' },

  ['@variable.rust'] = { fg = colors.red },
  ['@function.macro.rust'] = { fg = colors.blue },
  ['@namespace.rust'] = { fg = colors.peach },
  ['@variable.member.rust'] = { fg = colors.red, link = '' },
  ['@module.rust'] = { fg = colors.mauve },
  ['@punctuation.bracket.rust'] = { fg = colors.sky },

  ['@include.java'] = { fg = colors.mauve },
  ['@type.qualifier.java'] = { fg = colors.mauve },
  ['@repeat.java'] = { fg = colors.mauve },
  ['@attribute.java'] = { fg = colors.peach },
  ['@variable.member.java'] = { fg = colors.red, link = '' },

  htmlTag = { fg = colors.sky },
  htmlEndTag = { fg = colors.sky },
  htmlArg = { fg = colors.peach, link = '' },

  ['@variable.css'] = { fg = colors.red },
  ['@constant.bash'] = { fg = colors.red },

  zshVariable = { fg = colors.red },
  zshFunction = { fg = colors.blue },
  zshBrackets = { fg = colors.sky },
  zshParentheses = { fg = colors.sky },
  zshOperator = { fg = colors.sky },
  zshDeref = { fg = colors.red },
  zshShortDeref = { fg = colors.red },
  zshSubst = { fg = colors.red },
  zshOldSubst = { fg = colors.red },
  zshDelimiter = { fg = colors.sky },
  ['@variable.zsh'] = { fg = colors.red },
  ['@punctuation.bracket.zsh'] = { fg = colors.sky },
  ['@punctuation.delimiter.zsh'] = { fg = colors.sky },
  ['@operator.zsh'] = { fg = colors.sky },

  ['@spell.gitcommit'] = { fg = colors.blue },
  ['@text.gitcommit'] = { fg = colors.sky },

  LazyGitBorder = { fg = colors.blue },
  TabLine = { bg = colors.none, fg = colors.none },

  TextGreen = { fg = colors.green },
  TextRed = { fg = colors.red },
  TextBlue = { fg = colors.blue },
  TextMagenta = { fg = colors.mauve },
  TextYellow = { fg = colors.yellow },
  TextOrange = { fg = colors.peach },
  TextCyan = { fg = colors.sky },

  WinbarEmpty = { bg = base },
  CodeActionText = { fg = colors.text },

  SkActive = { bg = colors.red, fg = colors.crust },

  NavicIconsFolder = { fg = colors.yellow, bg = colors.none },
  NavicText = { fg = colors.text, bg = colors.none },
  NavicDepthLimitIndicator = { bg = colors.none, fg = 'yellow' },
  NavicFolderSeparator = { bg = colors.yellow, fg = colors.crust },
  NavicFolderBlock = { bg = colors.red, fg = colors.crust },

  WhichKeyDesc = { fg = colors.maroon },
  WhichKeyTitle = { fg = colors.mauve },
  WhichKey = { link = 'NormalFloat' },
  WhichKeyBorder = { fg = colors.lavender, bg = base },
  WhichKeyGroup = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.overlay0 },
  WhichKeyValue = { fg = colors.overlay0 },

  Directory = { fg = colors.yellow },
  SnacksPickerListNormal = { bg = colors.none },
  SnacksPickerListNormalFloat = { bg = colors.none },
  SnacksPickerInputNormal = { bg = colors.none },
  SnacksPickerInputNormalFloat = { bg = colors.none },
  SnacksPickerDirectory = { fg = colors.text },
  SnacksPickerRoot = { fg = colors.red },
  SnacksPickerTree = { fg = colors.surface0 },
  SnacksIndentScope = { link = 'Keyword' },
  SnacksIndentChunk = { link = 'Keyword' },

  VM_Extend = { bg = colors.blue, fg = colors.crust },
  VM_Cursor = { bg = colors.mauve, fg = colors.crust },

  GitSignsChange = { fg = colors.peach },
  GitSignsAdd = { fg = colors.green },
  GitSignsDelete = { fg = colors.red },

  LazyCommitIssue = { fg = colors.yellow },

  DiffviewFilePanelTitle = { fg = colors.blue },
  DiffviewDiffAdd = { bg = '#2A304B', fg = colors.none },
  DiffviewDiffChange = { bg = '#2A304B' },
  DiffviewDiffDelete = { bg = '#4F3A4F' },
  DiffviewDiffAddAsDelete = { bg = '#4F3A4F', fg = colors.none },
  DiffAdd = { bg = '#2A304B', fg = colors.none },
  DiffDelete = { bg = '#34232C' },
  DiffChange = { bg = '#384268' },
  DiffviewDiffText = { bg = '#484466', fg = colors.none, link = '' },
  DiffviewStatusModified = { fg = colors.yellow },
  DiffviewStatusAdded = { fg = colors.green },
  DiffviewFilePanelSelected = { fg = colors.text },
  DiffviewFilePanelFileName = { fg = colors.overlay0 },

  NoiceCmdlinePopupBorder = { fg = colors.green },
  NoiceCmdLinePopupTitle = { fg = colors.green },
  NoiceCmdlineIcon = { fg = colors.green },
  NoiceCmdlineBashIcon = { fg = colors.red },
  NoiceCmdlineHelpIcon = { fg = colors.blue },
  NoiceCmdlineHlIcon = { fg = colors.red },
  NoiceCmdlineReplaceIcon = { fg = colors.peach },
  NoiceCmdlineMapIcon = { fg = colors.text },
  NoiceCmdlineCalculatorIcon = { fg = colors.text },
  NoiceCmdlineLuaIcon = { link = 'DevIconLua' },
  NoiceConfirmBorder = { fg = colors.green },
  NoicePopupmenuSelected = { bg = colors.blue, fg = colors.crust },

  GitGraphHash = { fg = colors.yellow },
  GitGraphTimestamp = { fg = colors.green },
  GitGraphAuthor = { fg = colors.blue },
  GitGraphBranchName = { fg = colors.red },
  GitGraphBranchTag = { fg = colors.mauve },
  GitGraphBranchMsg = { fg = colors.text },
  GitGraphBranch1 = { fg = colors.red },
  GitGraphBranch2 = { fg = colors.peach },
  GitGraphBranch3 = { fg = colors.yellow },
  GitGraphBranch4 = { fg = colors.green },
  GitGraphBranch5 = { fg = colors.blue },

  BqfPreviewFloat = { bg = base },
  BqfPreviewBorder = { bg = base, fg = base },
  BqfPreviewTitle = { bg = colors.peach, fg = colors.crust },
  qfLineNr = { fg = colors.yellow },

  HelpviewCode = { bg = base },
  HelpviewPalette0 = { bg = colors.sky, fg = colors.crust },
  HelpviewPalette1 = { bg = colors.red, fg = colors.crust },
  HelpviewPalette2 = { bg = colors.peach, fg = colors.crust },
  HelpviewPalette3 = { bg = colors.yellow, fg = colors.crust },
  HelpviewPalette4 = { bg = colors.green, fg = colors.crust },
  HelpviewPalette6 = { bg = colors.mauve, fg = colors.crust },
  HelpviewPalette0Sign = { fg = colors.sky },
  HelpviewPalette1Sign = { fg = colors.red },
  HelpviewPalette2Sign = { fg = colors.peach },
  HelpviewPalette3Sign = { fg = colors.yellow },
  HelpviewPalette4Sign = { fg = colors.green },
  HelpviewPalette5Sign = { fg = colors.blue },
  HelpviewPalette6Sign = { fg = colors.mauve },
  HelpviewPalette7Sign = { fg = colors.peach },
  HelpviewIcon0 = { fg = colors.sky },
  HelpviewIcon1 = { fg = colors.red },
  HelpviewIcon2 = { fg = colors.peach },
  HelpviewIcon3 = { fg = colors.yellow },
  HelpviewIcon4 = { fg = colors.green },
  HelpviewIcon5 = { fg = colors.blue },
  HelpviewIcon6 = { fg = colors.mauve },

  NotifyERRORBorder = { fg = colors.maroon },
  NotifyWARNBorder = { fg = colors.yellow },
  NotifyINFOBorder = { fg = colors.green },
  NotifyDEBUGBorder = { fg = colors.blue },
  NotifyTRACEBorder = { fg = colors.mauve },
  NotifyERRORIcon = { fg = colors.red },
  NotifyWARNIcon = { fg = colors.yellow },
  NotifyINFOIcon = { fg = colors.green },
  NotifyDEBUGIcon = { fg = colors.blue },
  NotifyTRACEIcon = { fg = colors.mauve },
  NotifyERRORTitle = { fg = colors.red },
  NotifyWARNTitle = { fg = colors.yellow },
  NotifyINFOTitle = { fg = colors.green },
  NotifyDEBUGTitle = { fg = colors.blue },
  NotifyTRACETitle = { fg = colors.mauve },

  SnacksNotifierFooterInfo = { fg = colors.green },
  SnacksNotifierBorderInfo = { fg = colors.green },
  SnacksNotifierTitleInfo = { fg = colors.green },
  SnacksNotifierIconInfo = { fg = colors.green },

  SnacksPickerInput = { bg = base },
  SnacksPickerList = { bg = base },
  SnacksPickerPreview = { bg = base },
  SnacksPickerBox = { bg = base },
  SnacksPickerBorder = { fg = colors.surface1, bg = base },
  SnacksPickerInputBorder = { fg = colors.surface1, bg = base },
  SnacksPickerListBorder = { fg = colors.surface1, bg = base },
  SnacksPickerPreviewBorder = { fg = colors.surface1, bg = base },
  SnacksPickerBoxBorder = { fg = colors.surface1, bg = base },
  SnacksPickerMatch = { fg = colors.mauve },
  SnacksPickerDir = { fg = colors.overlay0 },
  SnacksPickerFile = { fg = colors.text },
  SnacksPickerPathHidden = { fg = colors.overlay0 },
  SnacksPickerGitStatusAdded = { fg = colors.green },
  SnacksPickerGitStatusModified = { fg = colors.yellow },
  SnacksPickerGitStatusDeleted = { fg = colors.red },
  SnacksPickerGitStatusUntracked = { fg = colors.peach },
  SnacksPickerPrompt = { fg = colors.blue },

  LemonNormal = { bg = base },
  LemonBorder = { fg = colors.float_surface0, bg = base },
  LemonTitle = stl_style == 'block' and { bg = colors.blue, fg = colors.crust, bold = true }
    or { fg = colors.blue, bg = base, bold = true },

  KulalaText = { bg = colors.green, fg = colors.crust },

  LemonBeacon = { bg = colors.blue },

  -- Blink Pairs
  BlinkPairsRed = { fg = colors.red },
  BlinkPairsYellow = { fg = colors.yellow },
  BlinkPairsBlue = { fg = colors.blue },
  BlinkPairsOrange = { fg = colors.peach },
  BlinkPairsGreen = { fg = colors.green },
  BlinkPairsPurple = { fg = colors.mauve },
  BlinkPairsCyan = { fg = colors.teal },
  BlinkPairsUnmatched = { fg = colors.pink },
  BlinkPairsMatchParen = { bg = colors.surface2 },
}

M.markview = {
  MarkviewPalette0 = { fg = colors.sky, bold = true },
  MarkviewPalette1 = { fg = colors.red, bold = true },
  MarkviewPalette2 = { fg = colors.peach, bold = true },
  MarkviewPalette3 = { fg = colors.yellow, bold = true },
  MarkviewPalette4 = { fg = colors.green, bold = true },
  MarkviewPalette5 = { fg = colors.blue, bold = true },
  MarkviewPalette6 = { fg = colors.mauve, bold = true },

  MarkviewPalette0Fg = { fg = colors.sky },
  MarkviewPalette1Fg = { fg = colors.red },
  MarkviewPalette2Fg = { fg = colors.peach },
  MarkviewPalette3Fg = { fg = colors.yellow },
  MarkviewPalette4Fg = { fg = colors.green },
  MarkviewPalette5Fg = { fg = colors.blue },
  MarkviewPalette6Fg = { fg = colors.mauve },

  MarkviewPalette0Sign = { fg = colors.sky },
  MarkviewPalette1Sign = { fg = colors.red },
  MarkviewPalette2Sign = { fg = colors.peach },
  MarkviewPalette3Sign = { fg = colors.yellow },
  MarkviewPalette4Sign = { fg = colors.green },
  MarkviewPalette5Sign = { fg = colors.blue },
  MarkviewPalette6Sign = { fg = colors.mauve },
  MarkviewPalette7Sign = { fg = colors.peach },

  MarkviewIcon0 = { fg = colors.sky },
  MarkviewIcon1 = { fg = colors.red },
  MarkviewIcon2 = { fg = colors.peach },
  MarkviewIcon3 = { fg = colors.yellow },
  MarkviewIcon4 = { fg = colors.green },
  MarkviewIcon5 = { fg = colors.blue },
  MarkviewIcon6 = { fg = colors.mauve },

  MarkviewCode = { bg = '#181825' },
  MarkviewCodeInfo = { fg = colors.surface2, bg = '#181825' },
  MarkviewCodeFg = { fg = base },
  MarkviewInlineCode = { fg = colors.peach },

  MarkviewBlockQuoteDefault = { fg = colors.sky },
  MarkviewBlockQuoteError = { fg = colors.red },
  MarkviewBlockQuoteNote = { fg = colors.blue },
  MarkviewBlockQuoteOk = { fg = colors.green },
  MarkviewBlockQuoteSpecial = { fg = colors.mauve },
  MarkviewBlockQuoteWarn = { fg = colors.peach },

  MarkviewCheckboxCancelled = { fg = colors.red },
  MarkviewCheckboxChecked = { fg = colors.green },
  MarkviewCheckboxPending = { fg = colors.peach },
  MarkviewCheckboxProgress = { fg = colors.blue },
  MarkviewCheckboxUnchecked = { fg = colors.text },
  MarkviewCheckboxStriked = { fg = colors.sky, strikethrough = true },

  MarkviewTableHeader = { fg = colors.sky },
  MarkviewTableBorder = { fg = colors.surface2 },
  MarkviewTableAlignCenter = { fg = colors.surface2 },
  MarkviewTableAlignLeft = { fg = colors.surface2 },
  MarkviewTableAlignRight = { fg = colors.surface2 },

  MarkviewListItemMinus = { fg = colors.peach },
  MarkviewListItemPlus = { fg = colors.blue },
  MarkviewListItemStar = { fg = colors.mauve },
  MarkviewListItemDot = { fg = colors.peach },

  MarkviewHeading1 = { fg = colors.red, bold = true },
  MarkviewHeading2 = { fg = colors.peach, bold = true },
  MarkviewHeading3 = { fg = colors.yellow, bold = true },
  MarkviewHeading4 = { fg = colors.green, bold = true },
  MarkviewHeading5 = { fg = colors.blue, bold = true },
  MarkviewHeading6 = { fg = colors.mauve, bold = true },

  MarkviewHeading1Sign = { fg = colors.red },
  MarkviewHeading2Sign = { fg = colors.peach },
  MarkviewHeading3Sign = { fg = colors.yellow },
  MarkviewHeading4Sign = { fg = colors.green },
  MarkviewHeading5Sign = { fg = colors.blue },
  MarkviewHeading6Sign = { fg = colors.mauve },
}

-- Apply highlights
function M.apply(highlights)
  for name, opts in pairs(highlights) do
    -- Handle link = "" (clear link)
    if opts.link == '' then
      opts = vim.tbl_extend('force', opts, { link = nil })
    end
    vim.api.nvim_set_hl(0, name, opts)
  end
end

local function apply_all()
  M.apply(M.bg)
  M.apply(M.syntax)
  M.apply(M.treesitter)
  M.apply(M.statusline)
  M.apply(M.navic)
  M.apply(M.diagnostics)
  M.apply(M.lsp)
  M.apply(M.lazy)
  M.apply(M.mason)
  M.apply(M.misc)
  M.apply(M.dashboard)
  M.apply(M.explorer)
  M.apply(M.markview)

  local ok_cmp, cmp_ui = pcall(require, 'ui.cmp')
  if ok_cmp then
    if cmp_ui.override then
      M.apply(cmp_ui.override)
    end
    if cmp_ui.add then
      M.apply(cmp_ui.add)
    end
  end

  M.apply(M.plugins)
end

function M.setup()
  apply_all()
  M.set_terminal_colors()
end

-- Terminal colors
function M.set_terminal_colors()
  vim.g.terminal_color_0 = colors.crust
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.mauve
  vim.g.terminal_color_6 = colors.sky
  vim.g.terminal_color_7 = colors.text
  vim.g.terminal_color_8 = colors.surface2
  vim.g.terminal_color_9 = colors.peach
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.sky
  vim.g.terminal_color_13 = colors.lavender
  vim.g.terminal_color_14 = colors.teal
  vim.g.terminal_color_15 = colors.text
end

return M
