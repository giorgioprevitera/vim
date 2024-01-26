source ~/.config/nvim/plugins.vim
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/treesitter.lua
source ~/.config/nvim/terraform.vim
source ~/.config/nvim/telescope_config.lua
source ~/.config/nvim/cmp.lua
source ~/.config/nvim/gitsigns.lua
source ~/.config/nvim/lualine.lua
source ~/.config/nvim/neotest.lua
source ~/.config/nvim/macros.vim
source ~/.config/nvim/neotree.lua
source ~/.config/nvim/noice_config.lua

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
set fillchars+=diff:╱

let g:python3_host_prog = expand('~/.local/share/nvim-venv/bin/python')

lua require("trouble").setup{}
lua require('nvim-autopairs').setup()
lua require('diffview').setup{}
lua require('neogit').setup{ disable_context_highlighting = true, integrations = { diffview = true } }
lua require("which-key").setup {plugins={spelling={enabled=true}}}
lua require('flash').setup()
lua require('flash').toggle()
lua require('barbecue').setup({attach_navic = false, theme = 'tokyonight'})
lua require('barbar').setup({sidebar_filetypes = { ['neo-tree'] = {event = 'BufWipeout'} }})
lua require("ibl").setup {}
lua require("outline").setup()

"--------------------------------------------------
" DiffView
"--------------------------------------------------
nnoremap <silent> <leader>dvc :DiffviewClose<CR>
nnoremap <silent> <leader>dvo :DiffviewOpen<CR>
nnoremap <silent> <leader>dvf :DiffviewFileHistory %<CR>
vnoremap <silent> <leader>dvf :DiffviewFileHistory %<CR>

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


nnoremap <silent> <leader>rf :Neotree reveal<CR>
nnoremap <silent> <leader>rg :Neotree reveal git_status<CR>
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
autocmd BufRead,BufNewFile terragrunt.hcl,*.tfvars set filetype=terraform
" Terraform
autocmd BufRead,BufNewFile *.sh.tpl set filetype=sh
autocmd BufRead,BufNewFile *.sh.tpl set syntax=sh
autocmd FileType terraform setlocal commentstring=#\ %s
" Helm
autocmd BufRead,BufNewFile */templates/*.yml,*/templates/*.yaml,*/templates/*.tpl,*.gotmpl,helmfile*.yaml set filetype=helm

nnoremap <leader>n :Navbuddy<CR>
nnoremap <leader>go :Neogit<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap s <cmd>lua require("flash").jump()<CR>
nnoremap S <cmd>lua require("flash").treesitter()<CR>
nnoremap <leader>tn <cmd>lua require("trouble").next({skip_groups = true, jump = true})<CR>
nnoremap <leader>tp <cmd>lua require("trouble").previous({skip_groups = true, jump = true})<CR>
nnoremap <leader>fp <cmd>Telescope projects<CR>
nnoremap <leader>so <cmd>Outline<CR>

if filereadable(expand("~/.config/nvim/local.vim"))
  source ~/.config/nvim/local.vim
endif

lua<<EOF
require('nvim-tundra').setup({
  plugins = {
    telescope = true,
    neogit = true,
    cmp = true,
    gitsigns = true,
  },
})
EOF

colorscheme tundra
set laststatus=3

"--------------------------------------------------
" vim-visual-multi
"--------------------------------------------------

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"]   = '<C-k>'
