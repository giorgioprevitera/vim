source ~/.config/nvim/plugins.vim
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/treesitter.lua
source ~/.config/nvim/terraform.vim
source ~/.config/nvim/telescope.vim
source ~/.config/nvim/cmp.lua
source ~/.config/nvim/gitsigns.lua
source ~/.config/nvim/lualine.lua

set completeopt=menu,menuone,noselect
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
" set cmdheight=0
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set foldmethod=indent
set foldlevel=99

let g:python3_host_prog = expand('~/.local/share/nvim-venv/bin/python')

lua require("trouble").setup{}
lua require('nvim-autopairs').setup()
lua require('diffview').setup{}
lua require('neogit').setup{ disable_context_highlighting = true, integrations = { diffview = true } }
lua require("which-key").setup {plugins={spelling={enabled=true}}}
lua require('neo-tree')
lua require('hop').setup()
lua require('barbecue').setup({attach_navic = false})
lua require("indent_blankline").setup { show_current_context = true }


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


nnoremap <silent> <leader>rf :NeoTreeReveal<CR>
nnoremap <silent> <leader>p :Neotree toggle filesystem left<CR>

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
" Pick buffer
nnoremap <silent>    <A-b> :BufferPick<CR>

"--------------------------------------------------
" Trouble
"--------------------------------------------------
nnoremap <leader>tr :TroubleToggle<CR>

"--------------------------------------------------
" Formatting
"--------------------------------------------------

augroup fmt
  autocmd!
  au BufWritePre * lua vim.lsp.buf.format()
augroup END


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
autocmd FileType terraform setlocal commentstring=#\ %s

nnoremap <leader>n :Neogit<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap s :HopWordAC<CR>
nnoremap S :HopWordBC<CR>

if filereadable(expand("~/.config/nvim/local.vim"))
  source ~/.config/nvim/local.vim
endif

colorscheme catppuccin
set laststatus=3
