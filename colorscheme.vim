let g:sonokai_style = 'andromeda'
" colorscheme sonokai
" colorscheme embark
" colorscheme deep-space
" colorscheme github_dimmed
" autocmd VimEnter * ++nested colorscheme enfocado
" colorscheme neobones

" let g:tokyonight_style = 'night'
" colorscheme tokyonight

let g:rose_pine_variant = 'base'
" colorscheme rose-pine
" colorscheme rosebones

" colorscheme nordbones

" colorscheme catppuccin

" colorscheme kanagawa
let g:onedark_config = {
    \ 'style': 'darker',
\}

" colorscheme onedark
" colorscheme brogrammer
" colorscheme sonokai
" colorscheme nord

" colorscheme monokai
" colorscheme monokai_pro
" colorscheme monokai_soda
" colorscheme monokai_ristretto
" colorscheme terafox
" colorscheme rigel
" colorscheme lucario

lua <<EOF
require('nvim-tundra').setup({
  plugins = {
    telescope = true,
  },
})
EOF

colorscheme sonokai
