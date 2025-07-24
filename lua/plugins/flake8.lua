return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function(_, opts)
      local null_ls = require "null-ls"
      opts.sources = vim.list_extend(opts.sources or {}, {
        require("none-ls.diagnostics.flake8").with {
          extra_args = { "--max-line-length=88" }, -- optional config
        },
      })
    end,
  },
}
