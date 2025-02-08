return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "vue", "css", "python", "ninja", "rst" }, -- Adicionando todas as linguagens
    highlight = { enable = true }, -- Ativa realce de sintaxe
    indent = { enable = true }, -- Ativa indentação baseada no Treesitter
  },
}
