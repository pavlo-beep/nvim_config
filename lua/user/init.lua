vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load Mason tool installer
require("user.lsp.mason_setup.mason-setup")

return {
  mappings = require("user.mappings"),
}
