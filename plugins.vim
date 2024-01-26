"-------- Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/catppuccin/nvim'
Plug 'https://github.com/dikiaap/minimalist'
Plug 'https://github.com/folke/tokyonight.nvim'
" Plug 'https://github.com/EdenEast/nightfox.nvim'
" Plug 'https://github.com/dasupradyumna/midnight.nvim'
" Plug 'https://github.com/ramojus/mellifluous.nvim'
Plug 'https://github.com/sam4llis/nvim-tundra'

Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'https://github.com/nvim-neotest/neotest'
Plug 'https://github.com/nvim-neotest/neotest-python'
Plug 'https://github.com/nvim-neotest/neotest-go'

Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim', { 'branch': 'main' }

Plug 'https://github.com/MunifTanjim/nui.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/stevearc/dressing.nvim'
Plug 'https://github.com/folke/noice.nvim'

Plug 'https://github.com/williamboman/mason.nvim'
Plug 'https://github.com/williamboman/mason-lspconfig.nvim'
Plug 'https://github.com/SmiteshP/nvim-navic'
Plug 'https://github.com/SmiteshP/nvim-navbuddy'
Plug 'https://github.com/romgrk/barbar.nvim'
Plug 'https://github.com/utilyre/barbecue.nvim' ", { 'branch': 'fix/E36' }
Plug 'https://github.com/hoob3rt/lualine.nvim'
Plug 'https://github.com/folke/which-key.nvim'
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/mg979/vim-visual-multi', {'branch': 'master'}
Plug 'https://github.com/hedyhli/outline.nvim'

Plug 'https://github.com/hrsh7th/nvim-cmp'
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
Plug 'https://github.com/hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'
Plug 'https://github.com/hrsh7th/cmp-cmdline'
Plug 'https://github.com/hrsh7th/cmp-vsnip', {'commit': '1ae05c6'}
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'https://github.com/hrsh7th/vim-vsnip'
Plug 'https://github.com/onsails/lspkind-nvim'
Plug 'https://github.com/rafamadriz/friendly-snippets'

Plug 'https://github.com/dyng/ctrlsf.vim'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
Plug 'https://github.com/NeogitOrg/neogit'
Plug 'https://github.com/sindrets/diffview.nvim'
Plug 'https://github.com/rbong/vim-flog', { 'on': 'Flog' }                                                         " Git branch viewer
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/folke/trouble.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'
Plug 'https://github.com/RRethy/nvim-treesitter-textsubjects'
Plug 'https://github.com/folke/flash.nvim'

Plug 'https://github.com/iamcco/markdown-preview.nvim.git', {  'for': 'markdown', 'do': 'cd app & yarn install'  } " Markdown preview plugin
Plug 'https://github.com/mzlogin/vim-markdown-toc'                                                                 " Plugin to generate table of contents for Markdown files
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/shumphrey/fugitive-gitlab.vim'
Plug 'https://github.com/tpope/vim-rhubarb.git'                                                                    " Github integration
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/voldikss/vim-floaterm'
Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/kevinhwang91/nvim-bqf'
Plug 'https://github.com/towolf/vim-helm'
Plug 'https://github.com/fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

call plug#end()
