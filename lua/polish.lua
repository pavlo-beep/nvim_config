-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- -- Disable lsp_signature.nvim entirely
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.name ~= "null-ls" then
      pcall(
        function()
          require("lsp_signature").on_attach({
            handler_opts = { border = "rounded" },
            hint_enable = false,
            floating_window = false,
          }, args.buf)
        end
      )
    end
  end,
})
