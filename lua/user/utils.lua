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

-- Toggle signature help
local signature_enabled = false

local sig_autocmd_id = nil

function M.enable_signature()
  if sig_autocmd_id then return end

  sig_autocmd_id = vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("SignatureToggle", { clear = true }),
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client and client.name ~= "null-ls" then
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

  signature_enabled = true
  vim.notify("Signature Help ENABLED", vim.log.levels.INFO)
end

function M.disable_signature()
  if sig_autocmd_id then
    vim.api.nvim_clear_autocmds { group = "SignatureToggle" }
    sig_autocmd_id = nil
    signature_enabled = false
    vim.notify("Signature Help DISABLED", vim.log.levels.INFO)
  end
end

function M.toggle_signature()
  if signature_enabled then
    M.disable_signature()
  else
    M.enable_signature()
  end
end

return M
