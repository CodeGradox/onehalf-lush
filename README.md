One half for neovim
===

This theme is based on the [One half](https://github.com/sonph/onehalf) color scheme.

The plugin was created with the aid of [Lush](https://github.com/rktjmp/lush.nvim).

Make sure you have neovim 0.5 with treesitter installed.

You can enable better syntax highlight with the following line.
```
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

```
