return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Ícones opcionais
  config = function()
    require("fzf-lua").setup({})
  end,
}
