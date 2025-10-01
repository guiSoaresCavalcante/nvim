return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      python = { "black" },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_fallback = false, -- só usar o formatter, não o LSP
    },
  },
}
