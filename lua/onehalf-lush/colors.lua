local M = {}

-- The colors are taken from https://github.com/sonph/onehalf.
M.light = {
  none        = "NONE",
  black       = "#383a42",
  red         = "#e45649",
  green       = "#50a14f",
  yellow      = "#c18401",
  blue        = "#0184bc",
  purple      = "#a626a4",
  cyan        = "#0997b3",
  white       = "#fafafa",

  comment_fg  = "#a0a1a7",
  gutter_bg   = "#fafafa",
  gutter_fg   = "#d4d4d4",
  non_text    = "#e5e5e5",

  cursor_line = "#f0f0f0",
  color_col   = "#f0f0f0",

  selection   = "#bfceff",
  vertsplit   = "#f0f0f0",
}

M.light.fg   = M.light.black
M.light.bg   = M.light.white
M.light.text = M.light.black

M.dark = {
  black   = "#282c34",
  red     = "#e06c75",
  green   = "#98c379",
  yellow  = "#e5c07b",
  blue    = "#61afef",
  purple  = "#c678dd",
  cyan    = "#56b6c2",
  white   = "#dcdfe4",

  comment_fg  = "#5c6370",
  gutter_bg   = "#282c34",
  gutter_fg   = "#919baa",
  non_text    = "#373C45",

  cursor_line = "#313640",
  color_col   = "#313640",

  selection   = "#474e5d",
  vertsplit   = "#313640",
}

M.dark.fg   = M.dark.white
M.dark.bg   = M.dark.black
M.dark.text = M.dark.white

return M
