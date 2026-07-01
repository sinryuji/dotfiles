vim.pack.add({
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  { src = 'https://github.com/navarasu/onedark.nvim', name = 'onedark' },
})

-- vim.cmd.colorscheme 'catppuccin-macchiato' -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

require('onedark').setup({
  style = 'dark', -- dark, darker, cool, deep, warm, warmer, light
})

require('onedark').load()
