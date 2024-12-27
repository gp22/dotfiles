return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'EdenEast/nightfox.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme.
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('nightfox').setup {
        options = {
          styles = {
            comments = 'italic',
            keywords = 'bold',
            types = 'italic,bold',
          },
        },
        groups = {
          all = {
            Whitespace = { fg = 'bg4' },
          },
        },
      }
      vim.cmd.colorscheme 'nordfox'
    end,
  },
}
