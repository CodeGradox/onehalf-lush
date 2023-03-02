One half for neovim
===

A light and dark colorscheme for neovim.

![Colorscheme preview](docs/preview.png)

This theme is based on the [One half](https://github.com/sonph/onehalf) color scheme. I have made some slight modifications to suit my personal preferences. I mainly program in Ruby, so the styling will be adjusted to make Ruby syntax look good.

Make sure you have neovim 0.8 with treesitter installed.

# Installation

Install the colorscheme with your favorite plugin manager.

```lua
-- Lazy
return {
  "CodeGradox/onehalf-lush",
  lazy = false,
  priority = 1000,
  config = function()
    vim.api.nvim_set_option("background", "light")
    vim.cmd("colorscheme onehalf-lush")
  end
}

-- Packer
return require("packer").startup(function()
  use "CodeGradox/onehalf-lush"
end)


vim.api.nvim_set_option("background", "light")
vim.cmd("colorscheme onehalf-lush")
```

# Set up the theme

Select between light and dark theme.

```lua
-- Set the color scheme.
vim.api.nvim_set_option("background", "light")
vim.cmd("colorscheme onehalf-lush")

-- Set the dark colorscheme
vim.api.nvim_set_option("background", "dark")
vim.cmd("colorscheme onehalf-lush-dark")
```

You can enable better syntax highlight with the following line.

```lua
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
```

# Lualine

There is also a theme for lualine. Note that the colors are determined by the value of `vim.opt.background`. I may fix this in the future, if I can figure out how.

```lua
require("lualine").setup {
  options = {
    theme = "onehalf-lush"
  }
}

```

# Credits

This package was originally written to be compatible with Lush. When the Lush template stopped working, the plugin was rewritten to work without Lush. I have copied [mofiguls](http://github.com/mofiqul) vscode plugin to get the hightlight groups, so credits to them for making it possible to easily extend their colorscheme.
