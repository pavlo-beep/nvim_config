local utils = require("user.utils")  -- here the logic for opening terminal and running current file lives

return {
  -- Terminal mode mappings
  t = {
    -- Exit terminal mode and close the terminal with <Esc>
    ["<Esc>"] = function()
      -- Exit terminal insert mode
      vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true),
        "n",
        false
      )
      -- Close the terminal buffer
      vim.cmd("bd!")
    end,
  },

  -- Normal mode mappings
  n = {
    ["<leader>tr"] = { utils.run_file, "Run current file in terminal" },
  },
}
