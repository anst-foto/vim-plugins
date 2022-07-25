set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set cursorline

set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[1 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[2 q" "EI = нормальный режим

set foldcolumn=2

syntax on

set nocompatible

set noerrorbells
set novisualbell

set mouse=a

set encoding=utf8

set ffs=unix,dos,mac

filetype plugin indent on

set guifont=JetBrainsMono:h16

colorscheme one
set background=dark " for the dark version

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ 'active': {
      \   'left': [['mode', 'paste' ],
      \            ['gitbranch', 'readonly', 'relativepath', 'conflicted', 'modified']],
      \ },
      \ 'inactive': {
      \   'left': [['filename', 'conflicted']],
      \ },
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [['close'], ['tabs']],
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help" ? "" : &readonly ? "\ue0a2" : ""}',
      \   'gitbranch': "\ue0a0 %{fugitive#Head()}",
      \   'conflicted': "\u22b6 %{exists('*ConflictedVersion') ? ConflictedVersion() : ''}",
      \ },
      \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
      \ 'component_type': { 'buffers': 'tabsel' },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help" && &readonly)',
      \   'gitbranch': '(exists("*fugitive#Head") && "" != fugitive#Head())',
      \   'conflicted': '(exists("*ConflictedVersion") && "" != ConflictedVersion())',
      \ },
      \ }

