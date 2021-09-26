"-------- Plugins
call plug#begin()
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'


Plug 'https://github.com/Yggdroot/indentLine.git'                                                                  " Display indentation lines
Plug 'https://github.com/alxpettit/detectindent.git'                                                               " Automatically detect indent settings

Plug 'https://github.com/juliosueiras/vim-terraform-completion.git', {'for': 'terraform'}                          " Autocompletion and linter for Terraform


Plug 'https://github.com/dyng/ctrlsf.vim'

Plug 'https://github.com/glepnir/galaxyline.nvim'

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
Plug 'https://github.com/ray-x/navigator.lua', { 'commit': 'd60b3c4024409a775efa425891e14ea369e4924d'}
Plug 'https://github.com/ray-x/lsp_signature.nvim'
Plug 'https://github.com/kabouzeid/nvim-lspinstall'
Plug 'https://github.com/folke/trouble.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'
Plug 'https://github.com/RRethy/nvim-treesitter-textsubjects'


Plug 'https://github.com/vim-test/vim-test'

Plug 'https://github.com/sainnhe/sonokai'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'projekt0n/github-nvim-theme'


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

source ~/.config/nvim/treesitter.lua
" source ~/.config/nvim/lualine.lua
source ~/.config/nvim/galaxyline.lua
source ~/.config/nvim/terraform.vim

source ~/.config/nvim/lsp.lua
lua require('gitsigns').setup{ current_line_blame = true }
lua require("trouble").setup{}
lua require('nvim-autopairs').setup()
lua require('telescope').setup{}
lua require('diffview').setup{}
lua require('lsp_signature').setup()
lua require('neogit').setup{ integrations = { diffview = true } }
source ~/.config/nvim/navigator.lua

set completeopt=menu,menuone,noselect
source ~/.config/nvim/cmp.lua

set termguicolors
set background=dark
set nu
set mouse=a
set clipboard=unnamed
set expandtab
set shiftwidth=4
set softtabstop=4
set inccommand=split
set splitright
set splitbelow
set nowrap
set linebreak
set smartcase
set hidden
set ignorecase
set cursorline
set foldmethod=indent
set foldlevel=99


let g:sonokai_style = 'andromeda'
colorscheme sonokai
" colorscheme embark


"--------------------------------------------------
" Vsnip
"--------------------------------------------------

" Expand or jump
imap <expr> <C-j> vsnip#jumpable(1)  ? '<Plug>(vsnip-jump-next)' : '<C-j>'
smap <expr> <C-j> vsnip#jumpable(1)  ? '<Plug>(vsnip-jump-next)' : '<C-j>'
imap <expr> <C-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<C-k>'
smap <expr> <C-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<C-k>'


let g:UltiSnipsExpandTrigger="C-<tab>"
" let g:UltiSnipsRemoveSelectModeMappings=false


"--------------------------------------------------
" CtrlSF
"--------------------------------------------------
nmap     <C-F><C-S> <Plug>CtrlSFPrompt
vmap     <C-F><C-S> <Plug>CtrlSFVwordPath
nmap     <C-F><C-F> <Plug>CtrlSFCwordPath<CR>
vmap     <C-F><C-F> <Plug>CtrlSFVwordExec
nmap     <C-F>w <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }


"--------------------------------------------------
" Telescope/FZF
"--------------------------------------------------

nnoremap <C-t> :Telescope<CR>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fa <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').command_history()<cr>


"--------------------------------------------------
" Terminal
"--------------------------------------------------

let g:floaterm_width =  0.9
let g:floaterm_height = 0.9

" Exit terminal mode using Esc
noremap  <silent> <M-`> :FloatermToggle<CR>
noremap! <silent> <M-`> <Esc>:FloatermToggle<CR>
tnoremap <silent> <M-`> <C-\><C-n>:FloatermToggle<CR>

tnoremap <silent> <M-z> <C-\><C-n>:FloatermUpdate --width=0.9 --height=0.9<CR>
tnoremap <silent> <C-W>k <C-\><C-n><C-W>k
tnoremap <silent> <C-W>h <C-\><C-n><C-W>h
tnoremap <silent> <C-W>L <C-\><C-n><C-W>L<CR>


"--------------------------------------------------
" Indenline
"--------------------------------------------------

let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
let g:indentLine_bgcolor_term = 239
let g:indentLine_faster = 1

augroup DetectIndent
    autocmd!
    autocmd BufReadPost *  DetectIndent
augroup END


"--------------------------------------------------
" NvimTree
"--------------------------------------------------
let g:nvim_tree_disable_window_picker = 1
lua<<EOF
require'nvim-tree'.setup{
    disable_netrw = false 
}
EOF

nnoremap <leader>p :NvimTreeToggle<CR>
nnoremap <leader>rf :NvimTreeFindFile<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25


"--------------------------------------------------
" Barbar tabs
"--------------------------------------------------

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
nnoremap <silent>    <A-o> :BufferCloseAllButCurrent<CR>



"--------------------------------------------------
" Trouble
"--------------------------------------------------
nnoremap <leader>tr :TroubleToggle<CR>

"--------------------------------------------------
" Syntax
"--------------------------------------------------

" Jenkinsfile
autocmd BufRead,BufNewFile Jenkinsfile*,*.jobdsl set filetype=groovy
" Dockerfile
autocmd BufRead,BufNewFile Dockerfile*, set syntax=dockerfile
au BufRead,BufNewFile Dockerfile.* set filetype=Dockerfile
au BufRead,BufNewFile *.sh.tpl set filetype=sh
filetype plugin indent on
" Terragrunt
autocmd BufRead,BufNewFile terragrunt.hcl set filetype=terraform
" Terraform
autocmd BufRead,BufNewFile *.sh.tpl set filetype=sh
autocmd BufRead,BufNewFile *.sh.tpl set syntax=sh


"--------------------------------------------------
" vim-visual-multi
"--------------------------------------------------

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"]   = '<C-k>'


"--------------------------------------------------
" Formatting
"--------------------------------------------------

augroup fmt
  autocmd!
  au BufWritePre * lua vim.lsp.buf.formatting_sync()
"   " au BufWritePre *.py try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
"   " au BufWritePre *.md try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
"   au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END

" Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

lua<<EOF
function OrgImports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit)
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end
vim.api.nvim_command("au BufWritePre *.go lua OrgImports(1000)")
EOF


"--------------------------------------------------
" Tests
"--------------------------------------------------


let test#strategy = "floaterm"
let test#python#runner = "pytest"
let test#python#pytest#options = "-rapP"
let test#go#runner = "gotest"

nnoremap <leader>gt :FloatermNew gotest -v ./...<CR>
nnoremap <leader>fw :vimgrep <cword> %<CR>:copen<CR><C-W>L
nnoremap <silent> <Leader>tfr :Tfdoc <C-R><C-W><CR>
nnoremap <silent> <Leader>tfd :Tfdoc -d <C-R><C-W><CR>

let g:python3_host_prog = "/Users/giorgio/.local/share/virtualenvs/nvim-venv-DKwLqbQC/bin/python3"

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

let g:fugitive_gitlab_domains = ['https://gitlab.tools.digital.coveahosted.co.uk']

