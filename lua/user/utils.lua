local M = {}

function M.run_file()
  local file = vim.fn.expand "%:p" -- full path to current file

  if vim.fn.empty(file) == 1 then
    vim.notify("No file to run", vim.log.levels.ERROR)
    return
  end

  -- Open horizontal terminal split
  vim.cmd "belowright split | terminal"

  -- Enter insert mode and send python3 command after a small delay
  vim.cmd "startinsert"
  vim.defer_fn(function()
    local cmd = "python3 '" .. file .. "'\n"
    vim.fn.chansend(vim.b.terminal_job_id, cmd)
  end, 100)
end

return M
