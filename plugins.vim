call plug#begin()

" Colorschemes
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/arzg/vim-colors-xcode'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/chuling/equinusocio-material.vim'
Plug 'https://github.com/KeitaNakamura/neodark.vim'
Plug 'https://github.com/adrian5/oceanic-next-vim'


" Plugins

if has('nvim')
    Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}                                             " Intellisense engine with full language server protocol support
endif
Plug 'https://github.com/Yggdroot/indentLine.git'                                                                  " Display indentation lines
Plug 'https://github.com/airblade/vim-gitgutter'                                                                   " Shows git diff in the sign column
Plug 'https://github.com/alfredodeza/pytest.vim', {'for': 'python'}                                                " Run Python tests
Plug 'https://github.com/alxpettit/detectindent.git'                                                               " Automatically detect indent settings
Plug 'https://github.com/andrewstuart/vim-kubernetes'                                                              " Kubernetes YAML snippets
Plug 'https://github.com/buoto/gotests-vim', {'for': 'go'}                                                         " Generate table driven tests easily
Plug 'https://github.com/dkprice/vim-easygrep.git'                                                                 " Fast and Easy Find and Replace Across Multiple Files
Plug 'https://github.com/dyng/ctrlsf.vim.git'                                                                      " Asynchronous code search and view tool
Plug 'https://github.com/fatih/vim-go.git', { 'do': ':GoUpdateBinaries' }                                          " Go development plugin for Vim
Plug 'https://github.com/godoctor/godoctor.vim', {'for': 'go'}                                                     " Vim plugin for the godoctor
Plug 'https://github.com/hashivim/vim-terraform.git', {'for': 'terraform'}                                         " Basic vim/terraform integration
Plug 'https://github.com/honza/vim-snippets.git'                                                                   " Vim-snipmate default snippets
Plug 'https://github.com/iamcco/markdown-preview.nvim.git', {  'for': 'markdown', 'do': 'cd app & yarn install'  } " Markdown preview plugin
Plug 'https://github.com/idanarye/vim-merginal', { 'on': 'Merginal' }                                              " Inteface for dealing with Git branches
Plug 'https://github.com/itchyny/lightline.vim'                                                                    " A light and configurable statusline/tabline
Plug 'https://github.com/jiangmiao/auto-pairs'                                                                     " Insert or delete brackets, parens, quotes in pair
Plug 'https://github.com/juliosueiras/vim-terraform-completion.git', {'for': 'terraform'}                          " Autocompletion and linter for Terraform
Plug 'https://github.com/justinmk/vim-sneak'                                                                       " Jump to any location specified by two characters
Plug 'https://github.com/liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }                    " Vim-clap is a modern generic interactive finder and dispatcher
Plug 'https://github.com/majutsushi/tagbar'                                                                        " Displays tags in a window, ordered by scope
Plug 'https://github.com/mbbill/undotree', { 'on': 'UndotreeToggle' }                                              " Undo history visualizer
Plug 'https://github.com/mustache/vim-mustache-handlebars'                                                         " A vim plugin for working with mustache and handlebars templates
Plug 'https://github.com/mg979/vim-visual-multi'                                                                   " Multiple cursors
Plug 'https://github.com/mzlogin/vim-markdown-toc'                                                                 " Plugin to generate table of contents for Markdown files
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'                                                          " Treesitter configurations and abstraction layer for Neovim. 
Plug 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'                                              " Create your own textobjects using tree-sitter queries
Plug 'https://github.com/rbong/vim-flog', { 'on': 'Flog' }                                                         " Git branch viewer
Plug 'https://github.com/rhysd/clever-f.vim.git'                                                                   " Extended f, F, t and T key mappings
Plug 'https://github.com/ryanoasis/vim-devicons'                                                                   " Adds file type icons
Plug 'https://github.com/scrooloose/nerdtree.git', {'on': ['NERDTreeToggle', 'NERDTreeFind']}                      " A tree explorer
Plug 'https://github.com/svermeulen/vim-cutlass.git'                                                               " Cutlass overrides the delete operations to actually just delete and not affect the current yank
Plug 'https://github.com/svermeulen/vim-yoink.git'                                                                 " Yoink will automatically maintain a history of yanks that you can choose between when pasting
Plug 'https://github.com/tommcdo/vim-fubitive.git'                                                                 " Bitbucket support
Plug 'https://github.com/tommcdo/vim-lion.git'                                                                     " align text
Plug 'https://github.com/towolf/vim-helm', { 'on': 'helm' }                                                        " Vim syntax for helm templates
Plug 'https://github.com/tpope/vim-commentary.git'                                                                 " Comment stuff out
Plug 'https://github.com/tpope/vim-endwise.git'                                                                    " simple plugin that helps to end certain structures automatically
Plug 'https://github.com/tpope/vim-fugitive.git'                                                                   " A Git wrapper so awesome, it should be illegal
Plug 'https://github.com/tpope/vim-obsession'                                                                      " Continuously updated session files
Plug 'https://github.com/tpope/vim-rhubarb.git'                                                                    " Github integration
Plug 'https://github.com/tpope/vim-sensible.git'                                                                   " Defaults everyone can agree on
Plug 'https://github.com/tpope/vim-surround.git'                                                                   " Quoting/parenthesizing made simple
Plug 'https://github.com/tpope/vim-unimpaired.git'                                                                 " Pairs of handy bracket mappings
Plug 'https://github.com/dhruvasagar/vim-prosession'                                                               " Handle vim sessions like a pro
Plug 'https://github.com/vim-scripts/highlight.vim.git'                                                            " Highlight lines or patterns of interest in different colors
Plug 'https://github.com/vimwiki/vimwiki.git'                                                                      " Personal Wiki
Plug 'https://github.com/voldikss/vim-floaterm', {'on': 'FloatermToggle'}                                          " Builtin terminal in the floating/popup window
Plug 'https://github.com/w0rp/ale.git'                                                                             " Check syntax in Vim asynchronously and fix files
Plug 'https://github.com/zefei/vim-wintabs'                                                                        " Per-window buffer manager for Vim
Plug 'https://github.com/zefei/vim-wintabs-powerline'                                                              " Powerline fonts renderers for wintabs

call plug#end()
