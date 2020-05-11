call plug#begin()

" Colorschemes
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/arzg/vim-colors-xcode'
Plug 'https://github.com/doums/darcula'
Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/sainnhe/sonokai'

" Plugins
if has('nvim')
    Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
endif
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/alfredodeza/pytest.vim', {'for': 'python'}
Plug 'https://github.com/alxpettit/detectindent.git'
Plug 'https://github.com/ap/vim-buftabline.git'
Plug 'https://github.com/buoto/gotests-vim', {'for': 'go'}
Plug 'https://github.com/dkprice/vim-easygrep.git', { 'on': ['Replace', 'Grep'] }
Plug 'https://github.com/dyng/ctrlsf.vim.git'
Plug 'https://github.com/fatih/vim-go.git', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/godoctor/godoctor.vim', {'for': 'go'}
Plug 'https://github.com/gregsexton/gitv', { 'on': 'Gitv' }
Plug 'https://github.com/hashivim/vim-terraform.git', {'for': 'terraform'}
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/iamcco/markdown-preview.nvim.git', {  'for': 'markdown', 'do': 'cd app & yarn install'  }
Plug 'https://github.com/idanarye/vim-merginal', { 'on': 'Merginal' }
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/jeetsukumaran/vim-buffersaurus.git', { 'on': 'Bsgrep' }
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/juliosueiras/vim-terraform-completion.git', {'for': 'terraform'}
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/junegunn/goyo.vim.git', { 'on': 'Goyo' }
Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/mustache/vim-mustache-handlebars', { 'for' : 'mustache' }
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/rhysd/git-messenger.vim.git', { 'on': 'GitMessenger' }
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/scrooloose/nerdtree.git', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'https://github.com/svermeulen/vim-cutlass.git'
Plug 'https://github.com/svermeulen/vim-yoink.git'
Plug 'https://github.com/tommcdo/vim-fubitive.git' " Bitbucket support
Plug 'https://github.com/tommcdo/vim-lion.git' " align text
Plug 'https://github.com/towolf/vim-helm'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rhubarb.git'  " Github integration
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/vim-scripts/highlight.vim.git'
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/voldikss/vim-floaterm', {'on': 'FloatermToggle'}
Plug 'https://github.com/w0rp/ale.git'

call plug#end()
