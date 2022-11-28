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
  colors.comment_fg  = "#a0a1a7"
  colors.gutter_bg   = "#fafafa"
  colors.gutter_fg   = "#d4d4d4"
  colors.non_text    = "#e5e5e5"

  colors.a_fg = colors.white
  colors.b_fg = colors.gutter_fg
  colors.b_bg = colors.white
  colors.c_fg = colors.non_text
  colors.c_bg = colors.white
  colors.fg = colors.black
  colors.bg = colors.white
else
  colors.black   = "#282c34"
  colors.red     = "#e06c75"
  colors.green   = "#98c379"
  colors.yellow  = "#e5c07b"
  colors.blue    = "#61afef"
  colors.purple  = "#c678dd"
  colors.cyan    = "#56b6c2"
  colors.white   = "#dcdfe4"
  colors.comment_fg  = "#5c6370"
  colors.gutter_bg   = "#282c34"
  colors.gutter_fg   = "#919baa"
  colors.non_text    = "#373C45"

  colors.a_fg = colors.black
  colors.b_fg = colors.gutter_fg
  colors.b_bg = colors.black
  colors.c_fg = colors.non_text
  colors.c_bg = colors.black
  colors.fg = colors.white
  colors.bg = colors.black
end

return {
  normal = {
    a = { bg = colors.blue,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,  fg = colors.b_fg },
    c = { bg = colors.c_bg,  fg = colors.c_fg }
  },
  insert = {
    a = { bg = colors.blue,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,  fg = colors.b_fg },
    c = { bg = colors.c_bg,  fg = colors.c_fg }
  },
  visual = {
    a = { bg = colors.blue,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,  fg = colors.b_fg },
    c = { bg = colors.c_bg,  fg = colors.c_fg }
  },
  replace = {
    a = { bg = colors.blue,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,  fg = colors.b_fg },
    c = { bg = colors.c_bg,  fg = colors.c_fg }
  },
  command = {
    a = { bg = colors.blue,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,  fg = colors.b_fg },
    c = { bg = colors.c_bg,  fg = colors.c_fg }
  },
  inactive = {
    a = { bg = colors.non_text, fg = colors.mode_text, gui = 'bold' },
  }
}
