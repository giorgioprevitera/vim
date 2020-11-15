"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>
nnoremap <leader>rf :NERDTreeFind<CR>
let NERDTreeMapMenu='n'
let g:NERDTreeWinSize=50
let g:NERDTreeShowIgnoredStatus = 1
" let g:NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1


"--------------------------------------------------
" Clap
"--------------------------------------------------

set hidden

nnoremap <c-p> :Clap filer<cr>
nnoremap <leader>f :Clap files<cr>
nnoremap <leader>b :Clap buffers<cr>
nnoremap <leader>cc :Clap <cr>
nnoremap <leader>a :Clap grep2<cr>
nnoremap <leader>r :Clap grep<cr>
nnoremap <leader>hif :Clap history<cr>
nnoremap <leader>hic :Clap command_history:<cr>
nnoremap <leader>his :Clap search_history<cr>
nnoremap <leader>ll :Clap lines<cr>
nnoremap <leader>s :Clap blines<cr>

let g:clap_disable_run_rooter = v:true
let g:clap_theme = 'material_design_dark'
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_q = {
      \ 'source': ['~/.vim/colors.vim', '~/.vim/vimrc', '~/.vim/plugins.vim', '~/.zshrc'],
      \ 'sink': 'e',
      \ }
