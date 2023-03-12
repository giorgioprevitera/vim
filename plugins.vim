"-------- Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/luukvbaal/statuscol.nvim'
Plug 'https://github.com/phelipetls/vim-jqplay'
Plug 'https://github.com/aduros/ai.vim'
Plug 'https://github.com/tommcdo/vim-lion'
Plug 'https://github.com/folke/noice.nvim'
Plug 'https://github.com/rcarriga/nvim-notify'
Plug 'https://github.com/mickael-menu/zk-nvim'


Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim', { 'branch': 'main' }
Plug 'https://github.com/MunifTanjim/nui.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/hoob3rt/lualine.nvim'

Plug 'https://github.com/SmiteshP/nvim-navic'
Plug 'https://github.com/utilyre/barbecue.nvim'


Plug 'https://github.com/s1n7ax/nvim-window-picker'

Plug 'https://github.com/williamboman/mason.nvim'
Plug 'https://github.com/williamboman/mason-lspconfig.nvim'


Plug 'https://github.com/kevinhwang91/promise-async'
Plug 'https://github.com/kevinhwang91/nvim-ufo'


Plug 'https://github.com/kevinhwang91/nvim-bqf'
Plug 'https://github.com/folke/which-key.nvim'

Plug 'https://github.com/mfussenegger/nvim-dap'
Plug 'https://github.com/rcarriga/nvim-dap-ui'
Plug 'https://github.com/leoluz/nvim-dap-go'
Plug 'https://github.com/mfussenegger/nvim-dap-python'

Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/buoto/gotests-vim'

Plug 'https://github.com/stevearc/dressing.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'https://github.com/onsails/lspkind-nvim'

" Ultisnips
Plug 'https://github.com/quangnguyen30192/cmp-nvim-ultisnips'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'

" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

" Vsnip
Plug 'https://github.com/hrsh7th/cmp-vsnip', {'commit': '1ae05c6'}
Plug 'https://github.com/hrsh7th/vim-vsnip'

Plug 'https://github.com/rafamadriz/friendly-snippets'

" Plug 'https://github.com/sbdchd/neoformat'

Plug 'https://github.com/Yggdroot/indentLine.git'                                                                  " Display indentation lines
Plug 'https://github.com/alxpettit/detectindent.git'                                                               " Automatically detect indent settings

Plug 'https://github.com/juliosueiras/vim-terraform-completion.git'                          " Autocompletion and linter for Terraform

Plug 'https://github.com/dyng/ctrlsf.vim'

" Plug 'https://github.com/glepnir/galaxyline.nvim'
" Plug 'https://github.com/windwp/windline.nvim'

Plug 'https://github.com/kyazdani42/nvim-tree.lua'

Plug 'https://github.com/lewis6991/gitsigns.nvim'
Plug 'https://github.com/mg979/vim-visual-multi'                                                                   " Multiple cursors
Plug 'https://github.com/nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-telescope/telescope-file-browser.nvim'
Plug 'https://github.com/romgrk/barbar.nvim'

" Plug 'https://github.com/ggandor/lightspeed.nvim'
Plug 'https://github.com/phaazon/hop.nvim'

Plug 'https://github.com/TimUntersberger/neogit'
Plug 'https://github.com/rbong/vim-flog', { 'on': 'Flog' }                                                         " Git branch viewer

Plug 'https://github.com/ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
Plug 'https://github.com/ray-x/lsp_signature.nvim'
Plug 'https://github.com/folke/trouble.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'
Plug 'https://github.com/RRethy/nvim-treesitter-textsubjects'


" Plug 'https://github.com/vim-test/vim-test'
" Plug 'https://github.com/rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/antoinemadec/FixCursorHold.nvim'
Plug 'https://github.com/nvim-neotest/neotest'
Plug 'https://github.com/nvim-neotest/neotest-python'
Plug 'https://github.com/nvim-neotest/neotest-go'

" Colorschemes
Plug 'https://github.com/sam4llis/nvim-tundra'
Plug 'https://github.com/talha-akram/noctis.nvim'
Plug 'https://github.com/tyrannicaltoucan/vim-deep-space'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/projekt0n/github-nvim-theme'
Plug 'https://github.com/mcchrish/zenbones.nvim'
Plug 'https://github.com/rktjmp/lush.nvim'
Plug 'https://github.com/rose-pine/neovim'
Plug 'https://github.com/folke/tokyonight.nvim'
Plug 'https://github.com/EdenEast/nightfox.nvim'
Plug 'https://github.com/catppuccin/nvim'
Plug 'https://github.com/rebelot/kanagawa.nvim'
Plug 'https://github.com/dikiaap/minimalist'
Plug 'https://github.com/fabi1cazenave/kalahari.vim'
Plug 'https://github.com/tamlok/detorte'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/marciomazza/vim-brogrammer-theme'
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'https://github.com/tanvirtin/monokai.nvim'
Plug 'https://github.com/Rigellute/rigel'
Plug 'https://github.com/karoliskoncevicius/sacredforest-vim'
Plug 'https://github.com/raphamorim/lucario'

Plug 'https://github.com/iamcco/markdown-preview.nvim.git', {  'for': 'markdown', 'do': 'cd app & yarn install'  } " Markdown preview plugin
Plug 'https://github.com/mzlogin/vim-markdown-toc'                                                                 " Plugin to generate table of contents for Markdown files

Plug 'https://github.com/simrat39/symbols-outline.nvim'
Plug 'https://github.com/sindrets/diffview.nvim'
" Plug 'https://github.com/tommcdo/vim-fubitive.git'                                                                 " Bitbucket support
Plug 'https://github.com/towolf/vim-helm', { 'On': 'helm' }
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

