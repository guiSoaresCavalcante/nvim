return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- 🐍 Configuração para Python (Ruff)
      ruff = {
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
      },
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
      },

      -- 🚀 Configuração para Vue (Volar & VTSLS)
      volar = {
        init_options = {
          vue = {
            hybridMode = true,
          },
        },
      },
      vtsls = {},
    },

    -- Configuração específica para Ruff
    setup = {
      ["ruff"] = function()
        LazyVim.lsp.on_attach(function(client, _)
          -- Desativa hover para Ruff, deixando Pyright assumir
          client.server_capabilities.hoverProvider = false
        end, "ruff")
      end,
    },
  },
}
