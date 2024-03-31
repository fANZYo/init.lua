return {
  "projekt0n/github-nvim-theme",

  config = function()
    require('github-theme').setup({})

    vim.cmd('colorscheme github_dark_default')
  end,
  -- "folke/tokyonight.nvim",
  -- config = function()
  -- 	require("tokyonight").setup()
  -- 	vim.cmd("colorscheme tokyonight-night")
  -- end
}
