return {
  --[[
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true
      }
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  }
  ]]
  --[[
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      -- check the installation instructions at
      -- https://github.com/folke/snacks.nvim
      "folke/snacks.nvim"
    },
    keys = {
      {
        "<C-_>",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      {
        "<c-up>",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
  }
  ]]
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
      },
      picker = {
        sources = {
          explorer = {
            auto_close = true,
          }
        }
      }
    },
    keys = {
      { "<C-_>", function() Snacks.explorer.open() end, desc = "File Explorer" },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  }
}
