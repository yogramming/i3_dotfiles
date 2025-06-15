-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.o.background = "dark" -- or "light" if you prefer
      vim.cmd([[colorscheme gruvbox]])
      vim.cmd([[
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NormalNC guibg=NONE ctermbg=NONE
        highlight SignColumn guibg=NONE
        highlight VertSplit guibg=NONE
      ]])
    end,
  },
}
