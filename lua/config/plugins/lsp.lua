return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
      {
        "williamboman/mason.nvim",
        config = true,
        build = ":MasonUpdate",
      },
      {
        "williamboman/mason-lspconfig.nvim",
        config = true
      },
    },
    config = function()
      require('lspconfig').util.default_config.on_init = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
      end

      require("mason").setup()
      require("mason-lspconfig").setup()

      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup({ capabilites = capabilities })
      require("lspconfig").gopls.setup({ capabilites = capabilities })
      require("lspconfig").templ.setup({ capabilites = capabilities })
      require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
      require("lspconfig").ts_ls.setup({ capabilities = capabilities })

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})
    end,
  },
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_format = "fallback",
        },
        formatters_by_ft = {
          javascript = { "prettierd", "prettier", "eslint" },
          typescript = { "prettierd", "prettier", "eslint" }
        }
      })
    end
  }
}
