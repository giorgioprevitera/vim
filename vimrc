source ~/.vim/plugins.vim
source ~/.vim/colors.vim
source ~/.vim/coc.vim
" source ~/.vim/airline.vim
" source ~/.vim/statusline.vim
source ~/.vim/lightline.vim
source ~/.vim/terminal.vim
source ~/.vim/ale.vim
source ~/.vim/git.vim
source ~/.vim/files-navigation.vim
source ~/.vim/search.vim
source ~/.vim/python.vim
source ~/.vim/netrw.vim
source ~/.vim/tags.vim

let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'

"--------------------------------------------------
" General settings
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
" set scrolloff=999
" keep multicursor
let g:multi_cursor_exit_from_insert_mode = 0

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end

set cursorline
" set nu rnu


"--------------------------------------------------
" Syntax
"--------------------------------------------------
syntax on
syntax enable
" YAML syntax
au BufNewFile,BufRead *.yaml.*,*.yml.* so ~/.vim/local/yaml.vim
" Jenkinsfile
autocmd BufRead,BufNewFile Jenkinsfile*,*.jobdsl set syntax=groovy
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
" indentline
"--------------------------------------------------
" let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
let g:indentLine_bgcolor_term = 239
" if the above doesn't work (no utf-8 file), use the pipe character
"let g:indentLine_char = '|'
let g:indentLine_faster = 1

" indent lines for tabs
" set list lcs=tab:\⎸\ 


"--------------------------------------------------
" Yoink
"--------------------------------------------------
nmap <M-k> <plug>(YoinkPostPasteSwapBack)
nmap <M-j> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
let g:yoinkIncludeDeleteOperations = 1


"--------------------------------------------------
" Terraform docs lookup
"--------------------------------------------------
command! -nargs=* Tfdoc :call system('tfdoc' . ' ' . <q-args>)
nnoremap <silent> <Leader>tfr :Tfdoc <C-R><C-W><CR>
nnoremap <silent> <Leader>tfd :Tfdoc -d <C-R><C-W><CR>



"--------------------------------------------------
" Cutlass
"--------------------------------------------------
nnoremap m d
xnoremap m d
nnoremap mm dd
nnoremap M D


"--------------------------------------------------
" Dim inactive
"--------------------------------------------------
" let g:diminactive_use_colorcolumn = 1
" let g:diminactive_use_syntax = 0


"--------------------------------------------------
" Misc
"--------------------------------------------------
nnoremap <leader>wr :set linebreak noshowmode dictionary=/usr/share/dict/british-english<CR>:Goyo<CR>

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END


augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"]   = '<C-k>'

nnoremap j gj
nnoremap k gk

let g:vimwiki_url_maxsave = 0

command! CleanBuffers %bd|e#
