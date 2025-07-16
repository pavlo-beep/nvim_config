local M = {}

local Terminal = require("toggleterm.terminal").Terminal
local run_term = nil

function M.run_file()
  if not run_term then
    run_term = Terminal:new({
      direction = "horizontal",
      close_on_exit = false,
      hidden = true,
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
    })
  end

  local file = vim.fn.expand("%:p")
  local ft = vim.bo.filetype
  local cmd = ""

  if ft == "python" then
    cmd = "python3 " .. file
  elseif ft == "lua" then
    cmd = "lua " .. file
  elseif ft == "javascript" then
    cmd = "node " .. file
  else
    print("Unsupported filetype: " .. ft)
    return
  end

  vim.cmd("w")
  run_term:toggle()
  run_term:send(cmd .. "\n")
end

return M
