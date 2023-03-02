-- onehalf-lush color scheme
-- Lua port of https://github.com/sonph/onehalf
-- By https://github.com/sonph/onehalf
-- The code is heavily based on http://github.com/mofiqul work.
local M = {}
local theme = require('onehalf-lush.theme')

-- @param string style
function M.setup(style)
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "onehalf-lush"

  theme.setup(style)
  theme.link_highlight()
end

-- @param string style
function M.change_style(style)
  vim.opt.background = style
  theme.setup(style)
  theme.link_highlight()
  print('onehalf-lush style: ', style)
  vim.cmd([[colorscheme onehalf-lush]])
end

return M
