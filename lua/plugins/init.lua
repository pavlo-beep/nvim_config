
return {
  -- Mason (LSP installer)
  require("plugins.mason"),

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Minimal setup; main config in lua/user/lsp.lua
    end,
  },

  -- File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          side = "right",
          width = 30,
        },
        actions = {
          open_file = {
            quit_on_open = false,
          },
        },
      })
    end,
  },

  -- Treesitter (syntax highlighting & more)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- recommended: use 'build' instead of 'run'
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "javascript", "json" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },

  -- Which-key (leader key hint popup)
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
      require("user.keymaps") -- Your custom key mappings using which-key.register
    end,
  },

  -- Add more plugins here later
  -- require("plugins.cmp"),
}

