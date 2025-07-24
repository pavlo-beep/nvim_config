
local lspconfig = require("lspconfig")

-- Attach function with modern keymaps
local on_attach = function(_, bufnr)
  local keymap = vim.keymap.set
  local opts = { buffer = bufnr, silent = true, noremap = true }

  -- LSP actions
  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  keymap("n", "[d", vim.diagnostic.goto_prev, opts)
  keymap("n", "]d", vim.diagnostic.goto_next, opts)
  keymap("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)
end

-- Common capabilities for cmp (autocomplete)
local capabilities = vim.lsp.protocol.make_client_capabilities()
local has_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if has_cmp_nvim_lsp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Setup: Python (Pyright)
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Setup: Lua (lua_ls)
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

