source ~/.vim/plugins.vim
source ~/.vim/colors.vim
source ~/.vim/coc.vim
source ~/.vim/airline.vim
source ~/.vim/terminal.vim
source ~/.vim/ale.vim
source ~/.vim/git.vim
source ~/.vim/files-navigation.vim
source ~/.vim/search.vim
source ~/.vim/python.vim
source ~/.vim/netrw.vim


"--------------------------------------------------
" General settings
"--------------------------------------------------
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
" keep multicursor
let g:multi_cursor_exit_from_insert_mode = 0

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end


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


"--------------------------------------------------
" indentline
"--------------------------------------------------
"let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 235
" if the above doesn't work (no utf-8 file), use the pipe character
"let g:indentLine_char = '|'
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0


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

let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }


"--------------------------------------------------
" Cutlass
"--------------------------------------------------
nnoremap m d
xnoremap m d
nnoremap mm dd
nnoremap M D


"--------------------------------------------------
" Misc
"--------------------------------------------------
nnoremap <leader>wr :set linebreak noshowmode dictionary=/usr/share/dict/british-english<CR>:Goyo<CR>
nnoremap <leader>no :tabnew ~/src/notes/ee-ni.notes<CR>
nnoremap <leader>gt :call ChooseTerm("terminal", 1)<CR>A<CR>go test -v --bench .<CR><esc>
