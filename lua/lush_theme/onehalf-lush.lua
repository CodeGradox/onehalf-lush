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
  white   = "#fafafa"
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
    SpellBad     { fg = c.red, gui = "" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { fg = c.yellow }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { fg = c.yellow }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { fg = c.yellow }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
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
    Label          { fg = c.purple }, --    case, default, etc.
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

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
