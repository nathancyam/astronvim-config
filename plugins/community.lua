return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "tpope/vim-projectionist",
    lazy = false,
  },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
