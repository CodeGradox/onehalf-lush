local colors = {}

colors.none = 'NONE'

-- The colors are taken from https://github.com/sonph/onehalf.
if vim.o.background == 'light' then
  colors.black   = "#383a42"
  colors.red     = "#e45649"
  colors.green   = "#50a14f"
  colors.yellow  = "#c18401"
  colors.blue    = "#0184bc"
  colors.purple  = "#a626a4"
  colors.cyan    = "#0997b3"
  colors.white   = "#fafafa"

  colors.fg = colors.black
  colors.bg = colors.white

  colors.comment_fg  = "#a0a1a7"
  colors.gutter_bg   = "#fafafa"
  colors.gutter_fg   = "#d4d4d4"
  colors.non_text    = "#e5e5e5"

  colors.cursor_line = "#f0f0f0"
  colors.color_col   = "#f0f0f0"

  colors.selection   = "#bfceff"
  colors.vertsplit   = "#f0f0f0"
else
  colors.black   = "#282c34"
  colors.red     = "#e06c75"
  colors.green   = "#98c379"
  colors.yellow  = "#e5c07b"
  colors.blue    = "#61afef"
  colors.purple  = "#c678dd"
  colors.cyan    = "#56b6c2"
  colors.white   = "#dcdfe4"

  colors.fg = colors.white
  colors.bg = colors.black

  colors.comment_fg  = "#5c6370"
  colors.gutter_bg   = "#282c34"
  colors.gutter_fg   = "#919baa"
  colors.non_text    = "#373C45"

  colors.cursor_line = "#313640"
  colors.color_col   = "#313640"

  colors.selection   = "#474e5d"
  colors.vertsplit   = "#313640"
end

return colors
