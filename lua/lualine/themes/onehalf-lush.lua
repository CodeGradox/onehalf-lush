local colors = {}

-- The colors are taken from https://github.com/sonph/onehalf.
if vim.o.background == 'light' then
  colors.black   = "#383a42"
  colors.red     = "#e45649"
  colors.green   = "#50a14f"
  colors.yellow  = "#c18401"
  colors.blue    = "#0184bc"
  colors.purple  = "#a626a4"
  colors.white   = "#fafafa"
  colors.inactive_bg = "#f0f0f0"
  colors.inactive_fg = colors.black

  colors.a_fg = colors.white
  colors.b_fg = colors.white
  colors.b_bg = colors.black
  colors.c_fg = colors.black
  colors.c_bg = colors.white
else
  colors.black   = "#282c34"
  colors.red     = "#e06c75"
  colors.green   = "#98c379"
  colors.yellow  = "#e5c07b"
  colors.blue    = "#61afef"
  colors.purple  = "#c678dd"
  colors.white   = "#dcdfe4"

  colors.a_fg = colors.black
  colors.b_fg = colors.black
  colors.b_bg = colors.white
  colors.c_fg = colors.white
  colors.c_bg = colors.black
  colors.inactive_bg = "#313640"
  colors.inactive_fg = colors.white
end

return {
  normal = {
    a = { bg = colors.blue,   fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,   fg = colors.b_fg },
    c = { bg = colors.c_bg,   fg = colors.c_fg }
  },
  insert = {
    a = { bg = colors.green,  fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,   fg = colors.b_fg },
    c = { bg = colors.c_bg,   fg = colors.c_fg }
  },
  visual = {
    a = { bg = colors.purple, fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,   fg = colors.b_fg },
    c = { bg = colors.c_bg,   fg = colors.c_fg}
  },
  replace = {
    a = { bg = colors.red,    fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,   fg = colors.b_fg },
    c = { bg = colors.c_bg,   fg = colors.c_fg }
  },
  command = {
    a = { bg = colors.yellow, fg = colors.a_fg, gui = 'bold' },
    b = { bg = colors.b_bg,   fg = colors.b_fg },
    c = { bg = colors.c_bg,   fg = colors.c_fg }
  },
  inactive = {
    a = { bg = colors.inactive_bg, fg = colors.inactive_fg, gui = 'bold' },
    b = { bg = colors.inactive_bg, fg = colors.inactive_fg },
    c = { bg = colors.inactive_bg, fg = colors.inactive_fg },
  }
}
