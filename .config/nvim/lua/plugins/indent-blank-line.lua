return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = function(_, opts)
    -- Define a highlight personalizada
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#292929", nocombine = true })

    -- Altera o caractere e aplica o highlight
    opts.indent = {
      char = "│",
      highlight = "IndentBlanklineChar",
    }

    return opts
  end,
}
