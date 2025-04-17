-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true
--vim.opt.shell = "/bin/zsh"

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    --vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "NONE" })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", fg = "#1e1e2f" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "NONE", bg = "#1e1e2f" })
  end,
})

--vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#D8DEE9" }) -- Cor clara para contraste

-- Torna os separadores transparentes
--vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "NONE" })

--vim.opt.fillchars = {
--  vert = " ",  -- Separador vertical como espaço em branco
--  horiz = " ", -- Separador horizontal como espaço em branco
--  eob = " ",   -- Fim do buffer como espaço em branco
--}
