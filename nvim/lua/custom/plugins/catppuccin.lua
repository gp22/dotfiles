return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    name = 'catppuccin',
    opts = {
      integrations = {
        diffview = true,
        mason = true,
        neotree = true,
      },
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
