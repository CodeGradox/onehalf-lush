-- onehalf-lush color scheme
-- Lua port of https://github.com/sonph/onehalf
-- By https://github.com/sonph/onehalf
-- The code is heavily based on http://github.com/mofiqul work.
local onehalf_lush = {}
local theme = require('onehalf-lush.theme')

onehalf_lush.setup = function(user_opts)
  local defaults = {
    transparent = false,
    italic_comments = true,
    color_overrides = {},
    group_overrides = {},
    disable_nvimtree_bg = true,
  }

  -- Override default settings with user settings.
  local opts = vim.tbl_extend('force', defaults, user_opts)

  -- setting transparent to true removes the default background
  if opts.transparent then
    opts.color_overrides.bg = 'NONE'
  end

  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = 'onehalf-lush'

  theme.set_highlights(opts)
  theme.link_highlight()

  for group, val in pairs(opts['group_overrides']) do
    vim.api.nvim_set_hl(0, group, val)
  end
end

onehalf_lush.change_style = function(style)
  vim.opt.background = style
  print('onehalf-lush style: ', style)
  vim.cmd([[colorscheme onehalf-lush]])
end

return onehalf_lush
