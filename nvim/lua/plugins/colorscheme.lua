return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  "catppuccin/nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme.
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    require("catppuccin").setup({
      flavour = "latte",
      --styles = {
      --  functions = { "bold" },
      --  keywords = { "bold" },
      --  types = { "italic" },
      --},
      color_overrides = {
        latte = {
          base = "#fcfcfd", --#eff1f6
          blue = "#1852c5", --#1e66f6
          --crust = "#", --#dce0e9
          flamingo = "#b16061", --#dd7879
          green = "#338023", --#40a02c
          lavender = "#5b6ccb", --#7287fe
          --mantle = "#", --#e6e9f0
          maroon = "#b83743", --#e64554
          mauve = "#6d2ec0", --#8839f0
          --overlay2 = "#", --#7c7f94
          --overlay1 = "#", --#8c8fa2
          --overlay0 = "#", --#9ca0b1
          peach = "#cb500a", --#fe640c
          pink = "#bb5ea3", --#ea76cc
          --red = "#", --#d20f3a
          rosewater = "#b06e61", --#dc8a79
          sapphire = "#1a7f92", --#209fb6
          sky = "#0384b8", --#04a5e6
          --subtext1 = "#", --#5c5f78
          --subtext0 = "#", --#6c6f86
          --surface2 = "#", --#acb0bf
          --surface1 = "#", --#bcc0cd
          --surface0 = "#", --#ccd0db
          teal = "#12757b", --#17929a
          --text = "#", --#4c4f6a
          yellow = "#b27218", --#df8e1e
        },
      },
    })
  end,
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

--return {
--  "maxmx03/solarized.nvim",
--  lazy = false,
--  priority = 1000,
--  ---@type solarized.config
--  opts = {},
--  config = function(_, opts)
--    vim.o.termguicolors = true
--    vim.o.background = "light"
--    require("solarized").setup(opts)
--    vim.cmd.colorscheme("solarized")
--  end,
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "solarized",
--    },
--  },
--}

--return {
--  "projekt0n/github-nvim-theme",
--  name = "github-theme",
--  lazy = false, -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    require("github-theme").setup({
--      options = {
--        styles = {
--          comments = "italic",
--          keywords = "bold",
--          types = "italic,bold",
--        },
--      },
--    })
--
--    vim.cmd("colorscheme github_light")
--  end,
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "github_light",
--    },
--  },
--}

--return {
--  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
--  "EdenEast/nightfox.nvim",
--  lazy = false, -- make sure we load this during startup if it is your main colorscheme.
--  priority = 1000, -- Make sure to load this before all the other start plugins.
--  init = function()
--    require("nightfox").setup({
--      options = {
--        styles = {
--          comments = "italic",
--          keywords = "bold",
--          types = "italic,bold",
--        },
--      },
--    })
--    vim.cmd.colorscheme("dayfox")
--  end,
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "dayfox",
--    },
--  },
--}
