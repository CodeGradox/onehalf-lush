One half for neovim
===

A light and dark colorscheme for neovim.

![Colorscheme preview](docs/preview.png)

This theme is based on the [One half](https://github.com/sonph/onehalf) color scheme. I have made some slight modifications to suit my personal preferences. I mainly program in Ruby, so the styling will be adjusted to make Ruby syntax look good.

Make sure you have neovim 0.8 with treesitter installed.

Install the colorscheme with your favorite plugin manager.

And here is how you do it with Packer in Lua.

```lua
return require("packer").startup(function()
  use "CodeGradox/onehalf-lush"
end)

-- Set the color scheme.
-- Dark background also works!
vim.opt.background = "light"
vim.cmd [[colorscheme onehalf-lush]]
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

# Credits

This package was originally written to be compatible with Lush. When the Lush template stopped working, the plugin was rewritten to work without Lush. I have copied [mofiguls](http://github.com/mofiqul) vscode plugin to get the hightlight groups, so credits to them for making it possible to easily extend their colorscheme.
