return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shell = "/bin/zsh",                 -- Define o Zsh como shell
      start_in_insert = true,
      dir = vim.fn.expand("%:p:h"),       -- Abre no diretório do arquivo atual
    })
  end,
}
