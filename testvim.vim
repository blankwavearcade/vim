"make this terminal 256 color bit!
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
"tabs = 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
"number those lines yo!
set number
" set syntax on
syntax on
syntax enable
"turn line rulings on 
set ruler
"ignore case in regex search
set ignorecase
"backups off because...version control
set ignorecase
set smartcase

"status line
set laststatus=2
set statusline=
set statusline+=%<\
set statusline+=%2*[%n%H%M%R%W]%*\
set statusline+=%-40f\
set statusline+=%=
set statusline+=%1*%y%*%*\
set statusline+=%10(L(%l/%L)%)\
set statusline+=%2(C(%v/125)%)\
set statusline+=%P
autocmd BufNewFile,BufRead *.json set ft=javascript

set nobackup
set nowb
set noswapfile
set rtp+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on
"remove windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

call pathogen#infect()

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

