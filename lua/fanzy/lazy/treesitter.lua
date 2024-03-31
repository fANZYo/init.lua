return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'vim', 'vimdoc', 'lua', 'javascript', 'typescript', 'jsdoc', 'query'
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      indent = {
        enable = true
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
      },
    })
  end
}
