require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "codespell",
    "lua-language-server",
  },
}
