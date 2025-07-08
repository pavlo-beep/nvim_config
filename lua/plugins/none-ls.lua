---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Pylint with Django support
      null_ls.builtins.diagnostics.pylint.with({
        extra_args = { "--load-plugins=pylint_django" },
      }),

      -- isort for import sorting
      null_ls.builtins.formatting.isort,
    })
  end,
}

