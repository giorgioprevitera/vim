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
source ~/.config/nvim/fold.lua
source ~/.config/nvim/mappings.lua

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
" lua require('flash').toggle()
lua require('barbecue').setup({attach_navic = false, theme = 'tokyonight'})
lua require('barbar').setup({sidebar_filetypes = { ['neo-tree'] = {event = 'BufWipeout'} }})
lua require("ibl").setup {}
lua require("outline").setup()
lua require('dap-python').test_runner = 'pytest'
lua << EOF
require('dap-python').resolve_python = function()
  return '/Users/giorgio/.asdf/shims/python'
end
EOF
lua require('dap-python').setup('/Users/giorgio/.asdf/shims/python')
lua require('dap-go').setup()
lua require("dapui").setup()
lua require('glance').setup()

"--------------------------------------------------
" CtrlSF
"--------------------------------------------------
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
" Go templates
au BufRead,BufNewFile *.tmpl set filetype=html


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
    lsp = true,
    treesitter = true,
  },
})
vim.g.tundra_biome = 'arctic'
EOF

colorscheme carbonfox
set laststatus=3
colorscheme carbonfox

"--------------------------------------------------
" vim-visual-multi
"--------------------------------------------------

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"]   = '<C-k>'

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
