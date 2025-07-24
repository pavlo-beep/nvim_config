
local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    e = { "<cmd>NvimTreeToggle<CR>", "Toggle File Explorer" },
    l = {
      name = "LSP",
      f = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Format buffer" },
      r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename symbol" },
    },
  },
})


