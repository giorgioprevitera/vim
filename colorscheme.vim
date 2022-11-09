let g:sonokai_style = 'andromeda'
" colorscheme sonokai
" colorscheme embark
" colorscheme deep-space
" colorscheme github_dimmed
" autocmd VimEnter * ++nested colorscheme enfocado
" colorscheme neobones

let g:tokyonight_style = 'moon'
" colorscheme tokyonight-moon

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
" colorscheme tundra

lua <<EOF
require("tokyonight").setup({
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
EOF
