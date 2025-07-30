---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- isort for import sorting
      null_ls.builtins.formatting.isort,

      -- codespell for spell checking
      null_ls.builtins.diagnostics.codespell,

      -- mypy for static type checking
      null_ls.builtins.diagnostics.mypy.with {
        extra_args = { "--ignore-missing-imports" },
      },

      -- pylint for linting
      null_ls.builtins.diagnostics.pylint.with {
        extra_args = { "--disable=missing-docstring" }, -- optional customization
      },
      null_ls.builtins.formatting.black.with {
        extra_args = { "--line-length=100" },
      },
    })
  end,
}
