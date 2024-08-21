local colors = require('onehalf-lush.colors')

local M = {}

-- Set highlight groups.
--
-- List of highlight groups:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
function M.setup(variant)
  local is_dark = variant == "dark"
  local c = is_dark and colors.dark or colors.light

  vim.api.nvim_set_hl(0, 'ColorColumn',                  { fg = c.none, bg = c.color_col })
  vim.api.nvim_set_hl(0, 'Comment',                      { fg = c.comment_fg, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, 'Conceal',                      { fg = c.fg })
  vim.api.nvim_set_hl(0, 'Cursor',                       { fg = c.bg, bg = c.blue })
  vim.api.nvim_set_hl(0, 'CursorColumn',                 { fg = c.none, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'CursorLine',                   { fg = c.none, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'CursorLineNr',                 { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Debug',                        { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Delimiter',                    { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiffAdd',                      { fg = c.green, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiffChange',                   { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiffDelete',                   { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiffText',                     { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'Directory',                    { fg = c.blue })
  vim.api.nvim_set_hl(0, 'EndOfBuffer',                  { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Error',                        { fg = c.red, bg = c.gutter_bg })
  vim.api.nvim_set_hl(0, 'ErrorMsg',                     { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'FoldColumn',                   { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Folded',                       { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Identifier',                   { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'Ignore',                       { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'IncSearch',                    { fg = c.bg, bg = c.yellow })
  vim.api.nvim_set_hl(0, 'LineNr',                       { fg = c.gutter_fg, bg = c.gutter_bg })
  vim.api.nvim_set_hl(0, 'MatchParen',                   { fg = c.blue, underline = true })
  vim.api.nvim_set_hl(0, 'ModeMsg',                      { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'MoreMsg',                      { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'NonText',                      { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Normal',                       { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, 'Pmenu',                        { fg = c.fg, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'PmenuSbar',                    { fg = c.none, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'PmenuSel',                     { fg = c.bg, bg = c.blue })
  vim.api.nvim_set_hl(0, 'PmenuThumb',                   { fg = c.none, bg = c.comment_fg })
  vim.api.nvim_set_hl(0, 'Question',                     { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Search',                       { fg = c.bg, bg = c.yellow })
  vim.api.nvim_set_hl(0, 'SignColumn',                   { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Special',                      { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'SpecialChar',                  { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'SpecialComment',               { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'SpecialKey',                   { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'SpellBad',                     { fg = c.red, bg = c.none, undercurl = true, sp = c.red })
  vim.api.nvim_set_hl(0, 'SpellCap',                     { fg = c.yellow, bg = c.none, undercurl = true, sp = c.yellow })
  vim.api.nvim_set_hl(0, 'SpellLocal',                   { fg = c.yellow, bg = c.none, undercurl = true, sp = c.yellow })
  vim.api.nvim_set_hl(0, 'SpellRare',                    { fg = c.yellow, bg = c.none, undercurl = true, sp = c.yellow })
  vim.api.nvim_set_hl(0, 'Statement',                    { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'StatusLine',                   { fg = c.blue, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'StatusLineNC',                 { fg = c.comment_fg, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'TabLine',                      { fg = c.comment_fg, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'TabLineFill',                  { fg = c.comment_fg, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'TabLineSel',                   { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, 'Tag',                          { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'Title',                        { fg = c.green, bg = c.none })
  vim.api.nvim_set_hl(0, 'Todo',                         { fg = c.purple, bold = true })
  vim.api.nvim_set_hl(0, 'Underlined',                   { fg = c.fg, bg = c.none, underline = true })
  vim.api.nvim_set_hl(0, 'VertSplit',                    { fg = c.vertsplit, bg = c.vertsplit })
  vim.api.nvim_set_hl(0, 'Visual',                       { fg = c.none, bg = c.selection })
  vim.api.nvim_set_hl(0, 'VisualNOS',                    { fg = c.none, bg = c.selection })
  vim.api.nvim_set_hl(0, 'WarningMsg',                   { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'Whitespace',                   { fg = c.non_text, bg = c.none })
  vim.api.nvim_set_hl(0, 'WildMenu',                     { fg = c.fg, bg = c.none })

  -- These groups are not listed as default vim groups,
  -- but they are defacto standard group names for syntax highlighting.
  -- commented out groups should chain up to their "preferred" group by
  -- default.
  -- Uncomment and edit if you want more specific syntax highlighting.
  vim.api.nvim_set_hl(0, 'Boolean',                      { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Character',                    { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Conditional',                  { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Constant',                     { fg = c.cyan, bg = c.none })
  vim.api.nvim_set_hl(0, 'Define',                       { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Exception',                    { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Float',                        { fg = c.yellow, bg = c.none })
  -- Used by nvim-cmp when showing documentation. Also used by vim.lsp.buf.hover.
  vim.api.nvim_set_hl(0, 'NormalFloat',                  { fg = c.none, bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'Function',                     { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'Include',                      { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Keyword',                      { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'Label',                        { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'Macro',                        { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'Number',                       { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Operator',                     { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, 'PreProc',                      { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Repeat',                       { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, 'StorageClass',                 { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'String',                       { fg = c.green, bg = c.none })
  vim.api.nvim_set_hl(0, 'Structure',                    { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Type',                         { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'Typedef',                      { fg = c.yellow, bg = c.none })

  -- Treesitter
  -- Find the symbol for the current node by calling :TSHighlightCapturesUnderCursor.
  vim.api.nvim_set_hl(0, '@error',                       { fg = c.red, bg = c.gutter_bg })
  vim.api.nvim_set_hl(0, '@punctuation.bracket',         { fg = is_dark and c.white or c.black, bg = c.none })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter',       { fg = is_dark and c.white or c.black, bg = c.none })
  vim.api.nvim_set_hl(0, '@punctuation.special',         { fg = is_dark and c.white or c.black, bg = c.none })
  vim.api.nvim_set_hl(0, '@comment',                     { fg = c.comment_fg, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, '@constant',                    { fg = c.cyan, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, '@constant.builtin',            { fg = c.cyan, bg = c.none })
  vim.api.nvim_set_hl(0, '@constant.macro',              { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@string.regex',                { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@string',                      { fg = c.green, bg = c.none })
  vim.api.nvim_set_hl(0, '@character',                   { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@number',                      { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@boolean',                     { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@float',                       { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@annotation',                  { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@attribute',                   { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@namespace',                   { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@function',                    { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@function.builtin',            { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@function.macro',              { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@function.call',               { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@parameter',                   { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, '@parameter.reference',         { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@method',                      { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@field',                       { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@property',                    { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, '@constructor',                 { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@conditional',                 { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@repeat',                      { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@label',                       { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, '@keyword',                     { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, '@keyword.function',            { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@keyword.operator',            { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@operator',                    { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@exception',                   { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@type',                        { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@type.builtin',                { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@structure',                   { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@symbol',                      { fg = c.cyan, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, '@include',                     { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, '@variable',                    { fg = is_dark and c.white or c.black, bg = c.none })
  vim.api.nvim_set_hl(0, '@variable.builtin',            { fg = c.cyan, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, '@text',                        { fg = c.text, bg = c.none })
  vim.api.nvim_set_hl(0, '@text.underline',              { fg = c.text, bg = c.none, underline = true })
  vim.api.nvim_set_hl(0, '@tag',                         { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, '@tag.delimiter',               { fg = c.fg, bg = c.none })
  vim.api.nvim_set_hl(0, '@tag.attribute',               { fg = c.fg, bg = c.none })

  -- I have no idea where these are used.
  vim.api.nvim_set_hl(0, '@text.title',                  { fg = c.blue, bg = c.none, bold = true })
  vim.api.nvim_set_hl(0, '@text.literal',                { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'markdown@text.literal',        { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'markdown_inline@text.literal', { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, '@text.emphasis',               { fg = c.blue, bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, '@text.strong',                 { fg = c.purple, bg = c.none, bold = true })
  vim.api.nvim_set_hl(0, '@text.uri',                    { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@textReference',               { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, '@stringEscape',                { fg = c.blue, bold = true })
  vim.api.nvim_set_hl(0, '@text.note',                   { fg = c.blue, bg = c.none, bold = true })
  vim.api.nvim_set_hl(0, '@text.warning',                { fg = c.yellow, bg = c.none, bold = true })
  vim.api.nvim_set_hl(0, '@text.danger',                 { fg = c.red, bg = c.none, bold = true })

  -- LSP
  vim.api.nvim_set_hl(0, 'DiagnosticError',              { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiagnosticWarn',               { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiagnosticInfo',               { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiagnosticHint',               { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError',     { fg = c.none, bg = c.none, undercurl = true, sp = c.red })
  vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn',      { fg = c.none, bg = c.none, undercurl = true, sp = c.yellow })
  vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo',      { fg = c.none, bg = c.none, undercurl = true, sp = c.blue })
  vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint',      { fg = c.none, bg = c.none, undercurl = true, sp = c.blue })
  vim.api.nvim_set_hl(0, 'LspReferenceText',             { fg = c.none, bg = c.cyan })
  vim.api.nvim_set_hl(0, 'LspReferenceRead',             { fg = c.none, bg = c.cyan })
  vim.api.nvim_set_hl(0, 'LspReferenceWrite',            { fg = c.none, bg = c.cyan })

  -- Fixes performance bug when CurSearch is used.
  -- https://github.com/neovim/neovim/issues/23590
  vim.api.nvim_set_hl(0, 'CurSearch', { link = 'Search'})

  -- IndentBlankLine
  vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar',   { fg = c.purple, bg = c.none, nocombine = true })
  -- These do not seem to work.
  -- hl(0, 'IndentBlanklineContextStart', { fg = c.purple, bg = c.none, nocombine = true })
  -- hl(0, 'IndentBlanklineChar', { fg = c.comment_fg, bg = c.none, nocombine = true })
  -- hl(0, 'IndentBlanklineSpaceChar', { fg = c.purple, bg = c.none, nocombine = true })
  -- hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = c.purple, bg = c.none, nocombine = true })

  -- Ruby
  vim.api.nvim_set_hl(0, '@variable.member.ruby',        { fg = c.red,   bg = c.none })
  vim.api.nvim_set_hl(0, '@string.special.symbol.ruby',  { fg = c.cyan,  bg = c.none, italic = true })
  vim.api.nvim_set_hl(0, 'rubyStringDelimiter',          { fg = c.green, bg = c.none })
  vim.api.nvim_set_hl(0, 'rubyKeywordAsMethod',          { fg = c.blue,  bg = c.none })
  vim.api.nvim_set_hl(0, 'slimRuby',                     { fg = c.blue,  bg = c.none })

  -- nvim-notify
  vim.api.nvim_set_hl(0, "NotifyERRORBorder",            { fg = c.red,        bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyWARNBorder",             { fg = c.yellow,     bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyINFOBorder",             { fg = c.blue,       bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBorder",            { fg = c.comment_fg, bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyTRACEBorder",            { fg = c.purple,     bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyERRORIcon",              { fg = c.red,        bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyWARNIcon",               { fg = c.yellow,     bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyINFOIcon",               { fg = c.blue,       bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyDEBUGIcon",              { fg = c.comment_fg, bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyTRACEIcon",              { fg = c.purple,     bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyERRORTitle",             { fg = c.fg,         bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyWARNTitle",              { fg = c.fg,         bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyINFOTitle",              { fg = c.fg,         bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyDEBUGTitle",             { fg = c.fg,         bg = c.none })
  vim.api.nvim_set_hl(0, "NotifyTRACETitle",             { fg = c.fg,         bg = c.none })

  -- nvim-cmp
  -- Colors for the completion menu
  vim.api.nvim_set_hl(0, "CmpItemKindVariable",          { fg = is_dark and c.white or c.black, bg = c.none  })
  vim.api.nvim_set_hl(0, "CmpItemKindClass",             { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindStruct",            { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindModule",            { fg = c.yellow, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated",        { fg = c.yellow, bg = c.none, strikethrough = true })
  vim.api.nvim_set_hl(0, "CmpItemKindField",             { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindProperty",          { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindInterface",         { fg = c.cyan, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindFunction",          { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindMethod",            { fg = c.purple, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword",           { fg = c.red, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindText",              { fg = c.text, bg = c.none })
end

function M.link_highlight()
  -- LSP Semantic Token Groups
  vim.api.nvim_set_hl(0, "@lsp.type.comment",                    { link = "@comment" })
  vim.api.nvim_set_hl(0, "@lsp.type.enum",                       { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.interface",                  { link = "Identifier" })
  vim.api.nvim_set_hl(0, "@lsp.type.keyword",                    { link = "@keyword" })
  vim.api.nvim_set_hl(0, "@lsp.type.namespace",                  { link = "@namespace" })
  vim.api.nvim_set_hl(0, "@lsp.type.parameter",                  { link = "@parameter" })
  vim.api.nvim_set_hl(0, "@lsp.type.property",                   { link = "@property" })
  vim.api.nvim_set_hl(0, "@lsp.type.variable", {}) -- use treesitter styles for regular variables
  vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary",   { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected",       { link = "@operator" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected",         { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected",       { link = "@variable" })

  -- NOTE: maybe add these with distinct highlights?
  -- ["@lsp.typemod.variable.globalScope"] (global variables)
  -- Legacy groups for official git.vim and diff.vim syntax
  vim.api.nvim_set_hl(0, 'diffAdded',                    { link = 'DiffAdd' })
  vim.api.nvim_set_hl(0, 'diffChanged',                  { link = 'DiffChange' })
  vim.api.nvim_set_hl(0, 'diffRemoved',                  { link = 'DiffDelete' })
end

return M
