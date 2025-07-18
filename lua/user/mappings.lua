local utils = require "user.utils" -- Business logic for <leader> custom shortcuts

return {
  -- Terminal mode mappings
  t = {
    -- Exit terminal mode and close the terminal with <Esc>
    ["<Esc>"] = function()
      -- Exit terminal insert mode
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", false)
      -- Close the terminal buffer
      vim.cmd "bd!"
    end,
  },

  -- Normal mode mappings
  n = {
    -- Run current file in a new terminal
    ["<Leader>tr"] = {
      function() utils.run_file() end,
      desc = "Run current file in horizontal terminal",
    },

    -- Toggle signature help
    ["<Leader>sh"] = {
      function() utils.toggle_signature() end,
      desc = "Toggle Signature Help",
    },

    ["<Leader>sk"] = {
      function() vim.lsp.buf.signature_help() end,
      desc = "Show Signature Help",
    },
  },
}
