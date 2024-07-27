-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  use 'wbthomason/packer.nvim'

--  use 'lervag/vimtex'

-- autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
    require('nvim-autopairs').setup()
    end
  }

-- treesitter
  use {
  	'nvim-treesitter/nvim-treesitter',
  	run = ':TSUpdate',
  }

  -- colorschemes
--  use 'rafamadriz/gruvbox'
--    use 'morhetz/gruvbox'
--
-- use { "ellisonleao/gruvbox.nvim" }
    use 'luisiacc/gruvbox-baby'


use 'nvim-tree/nvim-tree.lua'
--
  use 'nvim-tree/nvim-web-devicons'
--
  use 'nvim-lualine/lualine.nvim'
--
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'}}
  }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig"
  }

--  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'L3MON4D3/luaSnip'

  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  use "github/copilot.vim"
 -- help for git
  use 'kdheepak/lazygit.nvim'
  use 'norcalli/nvim-colorizer.lua'
 -- use 'xuhdev/vim-latex-live-preview'

  use{
        'hrsh7th/nvim-cmp',
        requires =
        {
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lua',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path',
        }
    }

-- install without yarn or npm
--  use({
--    "iamcco/markdown-preview.nvim",
--    run = function() vim.fn["mkdp#util#install"]() end,
--  })

--  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use "fatih/vim-go"                        -- https://github.com/fatih/vim-go

 -- Treesitter playground (optional, for debugging)
  use 'nvim-treesitter/playground'

end)
