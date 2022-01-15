--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- Colors
local c = {
  name    = "onehalflight",
  black   = "#383a42",
  red     = "#e45649",
  green   = "#50a14f",
  yellow  = "#c18401",
  blue    = "#0184bc",
  purple  = "#a626a4",
  cyan    = "#0997b3",
  white   = "#fafafa",
}

c.fg = c.black
c.bg = c.white

c.comment_fg  = "#a0a1a7"
c.gutter_bg   = "#fafafa"
c.gutter_fg   = "#d4d4d4"
c.non_text    = "#e5e5e5"

c.cursor_line = "#f0f0f0"
c.color_col   = "#f0f0f0"

c.selection   = "#bfceff"
c.vertsplit   = "#f0f0f0"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = c.comment_fg, gui = "italic" }, -- any comment
    ColorColumn  { bg = c.color_col }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = c.fg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = c.bg, bg = c.blue }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = c.cursor_line }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = c.cursor_line }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd      { fg = c.green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = c.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = c.blue }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = c.fg }, -- error messages on the command line
    VertSplit    { fg = c.vertsplit, bg = c.vertsplit }, -- the column separating vertically split windows
    Folded       { fg = c.fg }, -- line used for closed folds
    FoldColumn   { fg = c.fg }, -- 'foldcolumn'
    SignColumn   { fg = c.fg }, -- column where |signs| are displayed
    IncSearch    { fg = c.bg, bg = c.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg = c.gutter_fg, bg = c.gutter_bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.fg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = c.blue, gui = "underline" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = c.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = c.fg }, -- |more-prompt|
    NonText      { fg = c.non_text }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = c.fg, bg = c.bg }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = c.fg, bg = c.cursor_line }, -- Popup menu: normal item.
    PmenuSel     { fg = c.bg, bg = c.blue }, -- Popup menu: selected item.
    PmenuSbar    { bg = c.cursor_line }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = c.comment_fg }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = c.purple }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = c.bg, bg = c.yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg = c.fg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = c.red, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { fg = c.yellow, gui = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { fg = c.yellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { fg = c.yellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = c.blue, bg = c.cursor_line }, -- status line of current window
    StatusLineNC { fg = c.comment_fg, bg = c.cursor_line }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = c.comment_fg, bg = c.cursor_line }, -- tab pages line, not active tab page label
    TabLineFill  { fg = c.comment_fg, bg = c.cursor_line }, -- tab pages line, where there are no labels
    TabLineSel   { fg = c.fg, bg = c.bg }, -- tab pages line, active tab page label
    Title        { fg = c.green }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = c.selection }, -- Visual mode selection
    VisualNOS    { bg = c.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = c.red }, -- warning messages
    Whitespace   { fg = c.non_text }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { fg = c.fg }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = c.cyan }, -- (preferred) any constant
    String         { fg = c.green }, --   a string constant: "this is a string"
    Character      { fg = c.green }, --  a character constant: 'c', '\n'
    Number         { fg = c.yellow }, --   a number constant: 234, 0xff
    Boolean        { fg = c.yellow }, --  a boolean constant: TRUE, false
    Float          { fg = c.yellow }, --    a floating point constant: 2.3e10

    Identifier     { fg = c.red }, -- (preferred) any variable name
    Function       { fg = c.blue }, -- function name (also: methods for classes)

    Statement      { fg = c.purple }, -- (preferred) any statement
    Conditional    { fg = c.purple }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = c.purple }, --   for, do, while, etc.
    Label          { fg = c.red }, --    case, default, etc.
    Operator       { fg = c.fg }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = c.red }, --  any other keyword
    Exception      { fg = c.purple }, --  try, catch, throw

    PreProc        { fg = c.yellow }, -- (preferred) generic Preprocessor
    Include        { fg = c.purple }, --  preprocessor #include
    Define         { fg = c.purple }, --   preprocessor #define
    Macro          { fg = c.purple }, --    same as Define
    PreCondit      { fg = c.yellow }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = c.yellow }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = c.yellow }, -- static, register, volatile, etc.
    Structure      { fg = c.yellow }, --  struct, union, enum, etc.
    Typedef        { fg = c.yellow }, --  A typedef

    Special        { fg = c.blue }, -- (preferred) any special symbol
    SpecialChar    { fg = c.fg }, --  special character in a constant
    Tag            { fg = c.fg }, --    you can use CTRL-] on this
    Delimiter      { fg = c.fg }, --  character that needs attention
    SpecialComment { fg = c.fg }, -- special things inside a comment
    Debug          { fg = c.fg }, --    debugging statements

    Underlined { fg = c.fg, gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    Ignore         { fg = c.fg }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = c.red, bg = c.gutter_bg }, -- (preferred) any erroneous construct

    Todo           { fg = c.purple }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- used for highlighting "text" references
    -- LspReferenceRead            { } , -- used for highlighting "read" references
    -- LspReferenceWrite           { } , -- used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = c.red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = c.yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = c.blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              { fg = c.fg } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    TSFunction           { fg = c.blue } , -- Function calls and definitions.
    TSFuncBuiltin        { fg = c.blue } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            { fg = c.purple } , -- Keywords that don't fit into other categories.
    TSKeywordFunction    { fg = c.purple } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod             { fg = c.blue } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    TSOperator           { fg = c.purple } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          { fg = c.red } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    TSProperty           { fg = c.fg } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol             { fg = c.cyan, gui = "italic" } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    TSStrong             { gui = "bold" } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    TSUnderline          { gui = "underline" } , -- Text to be represented with an underline.
    TSStrike             { gui = "strikethrough" } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { fg = c.cyan, gui = "italic" } , -- Variable names defined by the language: `this` or `self` in Javascript.

    -- lukas-reineke/indent-blankline.nvim
    IndentBlanklineContextChar  { fg = c.purple, gui = "nocombine" } -- Highlight of indent character when base of current context.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
