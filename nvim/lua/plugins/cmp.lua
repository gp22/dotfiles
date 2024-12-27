return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping["<CR>"] = nil
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    })
  end,
}
