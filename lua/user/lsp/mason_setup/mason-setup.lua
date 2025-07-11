require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "basedpyright",
    "basedpyright-langserver",
    "black",
    "codespell",
    "jedi-language-server",
    "lua-language-server",
    "pylsp",
    "typescript-language-server",
  },
})
