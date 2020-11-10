"--------------------------------------------------
" Global settings
"--------------------------------------------------
nnoremap <Leader>vi :tabnew ~/.vim/vimrc<CR>
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set splitright
set nu
" set updatetime=1000
" set mouse=nicr
set mouse=a
set clipboard=unnamed
set foldmethod=indent
set foldlevel=99
set splitright
set splitbelow
set nowrap
set linebreak
" set scrolloff=999
" keep multicursor
let g:multi_cursor_exit_from_insert_mode = 0

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end

set cursorline
" set nu rnu

nnoremap j gj
nnoremap k gk

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"]   = '<C-k>'


let g:vimwiki_url_maxsave = 0
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

command! CleanBuffers %bd|e#

" Sessions
" nmap <leader>s :Prosession
set sessionoptions+=globals

set inccommand=split
