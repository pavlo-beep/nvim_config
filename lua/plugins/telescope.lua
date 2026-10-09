return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    keys = {
      { "<leader>s", group = "Search" },

      -- Project
      {
        "<leader>sf",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Files",
      },
      {
        "<leader>sg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Grep (type search text)",
      },
      {
        "<leader>sw",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc = "Word under cursor",
      },
      {
        "<leader>sr",
        function()
          require("telescope.builtin").resume()
        end,
        desc = "Resume last search",
      },
      {
        "<leader>ss",
        function()
          require("telescope.builtin").builtin()
        end,
        desc = "Telescope pickers",
      },

      -- Buffers / help
      {
        "<leader>sb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Buffers",
      },
      {
        "<leader>sh",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Help tags",
      },
      {
        "<leader>sk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc = "Keymaps",
      },
      {
        "<leader>sc",
        function()
          require("telescope.builtin").commands()
        end,
        desc = "Commands",
      },

      -- Git
      {
        "<leader>sgb",
        function()
          require("telescope.builtin").git_branches()
        end,
        desc = "Git branches",
      },
      {
        "<leader>sgc",
        function()
          require("telescope.builtin").git_commits()
        end,
        desc = "Git commits",
      },
      {
        "<leader>sgs",
        function()
          require("telescope.builtin").git_status()
        end,
        desc = "Git status",
      },
      {
        "<leader>sgf",
        function()
          require("telescope.builtin").git_files()
        end,
        desc = "Git files",
      },

      -- LSP
      {
        "<leader>sd",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Diagnostics",
      },
      {
        "<leader>slr",
        function()
          require("telescope.builtin").lsp_references()
        end,
        desc = "LSP references",
      },
      {
        "<leader>sld",
        function()
          require("telescope.builtin").lsp_definitions()
        end,
        desc = "LSP definitions",
      },
      {
        "<leader>sli",
        function()
          require("telescope.builtin").lsp_implementations()
        end,
        desc = "LSP implementations",
      },
      {
        "<leader>sls",
        function()
          require("telescope.builtin").lsp_document_symbols()
        end,
        desc = "Document symbols",
      },
      {
        "<leader>slw",
        function()
          require("telescope.builtin").lsp_workspace_symbols()
        end,
        desc = "Workspace symbols",
      },

      -- Misc
      {
        "<leader>so",
        function()
          require("telescope.builtin").oldfiles()
        end,
        desc = "Recent files",
      },
      {
        "<leader>sm",
        function()
          require("telescope.builtin").marks()
        end,
        desc = "Marks",
      },
      {
        "<leader>sq",
        function()
          require("telescope.builtin").quickfix()
        end,
        desc = "Quickfix",
      },
      {
        "<leader>sj",
        function()
          require("telescope.builtin").jumplist()
        end,
        desc = "Jump list",
      },
      {
        "<leader>s:",
        function()
          require("telescope.builtin").command_history()
        end,
        desc = "Command history",
      },
      {
        "<leader>s/",
        function()
          require("telescope.builtin").search_history()
        end,
        desc = "Search history",
      },
    },
  },
}
