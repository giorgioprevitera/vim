"-------- Plugins
call plug#begin()
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'

" Ultisnips
Plug 'SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'https://github.com/rafamadriz/friendly-snippets'

Plug 'https://github.com/sbdchd/neoformat'

Plug 'https://github.com/Yggdroot/indentLine.git'                                                                  " Display indentation lines
Plug 'https://github.com/alxpettit/detectindent.git'                                                               " Automatically detect indent settings

Plug 'https://github.com/juliosueiras/vim-terraform-completion.git', {'for': 'terraform'}                          " Autocompletion and linter for Terraform

Plug 'https://github.com/dyng/ctrlsf.vim'

" Plug 'https://github.com/glepnir/galaxyline.nvim'
Plug 'https://github.com/windwp/windline.nvim'

Plug 'https://github.com/kyazdani42/nvim-tree.lua'
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
Plug 'https://github.com/mg979/vim-visual-multi'                                                                   " Multiple cursors
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/romgrk/barbar.nvim'

Plug 'https://github.com/TimUntersberger/neogit'
Plug 'https://github.com/rbong/vim-flog', { 'on': 'Flog' }                                                         " Git branch viewer

Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
" Plug 'https://github.com/ray-x/navigator.lua', { 'commit': 'd60b3c4024409a775efa425891e14ea369e4924d'}
" Plug 'https://github.com/ray-x/navigator.lua'
Plug 'https://github.com/ray-x/lsp_signature.nvim'
" Plug 'https://github.com/kabouzeid/nvim-lspinstall'
Plug 'https://github.com/williamboman/nvim-lsp-installer'
Plug 'https://github.com/folke/trouble.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'
Plug 'https://github.com/RRethy/nvim-treesitter-textsubjects'


Plug 'https://github.com/vim-test/vim-test'

" Colorschemes
Plug 'https://github.com/tyrannicaltoucan/vim-deep-space'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/embark-theme/vim', { 'as': 'embark' }
Plug 'https://github.com/projekt0n/github-nvim-theme'
Plug 'https://github.com/wuelnerdotexe/vim-enfocado'
Plug 'https://github.com/mcchrish/zenbones.nvim'
Plug 'https://github.com/rktjmp/lush.nvim'
Plug 'https://github.com/rose-pine/neovim'

Plug 'https://github.com/iamcco/markdown-preview.nvim.git', {  'for': 'markdown', 'do': 'cd app & yarn install'  } " Markdown preview plugin
Plug 'https://github.com/mzlogin/vim-markdown-toc'                                                                 " Plugin to generate table of contents for Markdown files

Plug 'https://github.com/simrat39/symbols-outline.nvim'
Plug 'https://github.com/sindrets/diffview.nvim'
Plug 'https://github.com/tommcdo/vim-fubitive.git'                                                                 " Bitbucket support
Plug 'https://github.com/towolf/vim-helm', { 'on': 'helm' }
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/shumphrey/fugitive-gitlab.vim'
Plug 'https://github.com/tpope/vim-rhubarb.git'                                                                    " Github integration
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/voldikss/vim-floaterm'
Plug 'https://github.com/windwp/nvim-autopairs'
call plug#end()

