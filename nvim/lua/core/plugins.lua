vim.pack.add({
  { src = 'https://github.com/nvim-lua/plenary.nvim', name = 'plenary' }, -- depend on telescope, neotree
  { src = 'https://github.com/nvim-tree/nvim-web-devicons', name = 'devicons' }, -- depend on telescope, neotree, bufferline
  { src = 'https://github.com/nvim-telescope/telescope.nvim', name = 'telescope' },
  { src = 'https://github.com/MunifTanjim/nui.nvim', name = 'nui' }, -- depend on neotree
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3'), name = 'neotree' },
  { src = 'https://github.com/akinsho/bufferline.nvim', name = 'bufferline' },
  { src = 'https://github.com/numtostr/comment.nvim', name = 'comment' },
  { src = 'https://github.com/kylechui/nvim-surround', version = vim.version.range('4.x'), name = 'surround' },
  { src = 'https://github.com/folke/noice.nvim', name = 'noice' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim', name = 'gitsigns' },
  { src = 'https://github.com/NeogitOrg/neogit', name = 'neogit' },
  { src = 'https://github.com/folke/snacks.nvim', name = 'snacks' },
  { src = 'https://github.com/rcarriga/nvim-notify', name = 'notify' },
  { src = 'https://github.com/neovim/nvim-lspconfig', name = 'lspconfig' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim', name = 'lualine' },
  { src = 'https://github.com/nvim-mini/mini.pairs', name = 'minipairs' },
  { src = 'https://github.com/folke/trouble.nvim', name = 'trouble' }
})

-- bufferlne
require('bufferline').setup()

require('noice').setup()

require('gitsigns').setup({ 
  current_line_blame = true 
})

require('snacks').setup({
  image = {
    enabled = true
  },
  scroll = {
    enabled = true,

    -- 애니메이션 지속 시간 (ms)
    duration = 200,

    -- easing 함수 (부드러움 정도)
    easing = 'linear', -- 또는 'outQuad', 'inOutCubic'

    -- 스크롤 간격
    step = 1
  },
  terminal = {
    enabled = true,

    -- 기본 쉘
    shell = vim.o.shell,

    -- floating 창 설정
    win = {
      position = 'bottom', -- float / bottom / right
      border = 'rounded',
    },
  }
})

vim.notify = require('notify')

require('lualine').setup()

require('mini.pairs').setup()

require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  }
}

require('mini.pairs').setup()

require('trouble').setup()
