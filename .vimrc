set nocompatible              " Use vim defaults
set ls=2                      " Always show status line
set showcmd                   " Show incomplete commands
set scrolloff=4               " Keep 4 lines when scrolling
set ruler                     " Show the cursor position all the time
set title                     " Show title in console title bar
set hid                       " Change buffer without saving
set showmatch                 " Show matching brackets

set ts=2                      " Numbers of spaces of tab character
set sw=2                      " Numbers of spaces to (auto)indent
set et                        " Tabs are converted to spaces, use only when required
set sts=2                     " Soft tab stop
set smartindent               " Smart indent
set autoindent
set nocindent
filetype plugin indent on     "Indent for current filetype
syntax enable
:inoremap # x#
set wrap
 
set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching

set number                    " Show Line Numbers
hi LineNr ctermfg=white
hi LineNr ctermbg=darkgrey

" Tell vim to remember certain things when we exit
"  '50  :  marks will be remembered for up to 50 previously edited files
"  "500 :  will save up to 500 lines for each register
"  :100  :  up to 100 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='50,\"500,:100,%,n~/.viminfo

"save undo history
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
 
if has("autocmd")
au FileType cpp,c,java,sh,pl,php,python,ruby set autoindent
au FileType cpp,c,java,sh,pl,php,py,rb set smartindent
au FileType cpp,c,java,sh,pl,php set cindent
au BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufRead *.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufRead *.rb set smartindent cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
endif
 
syntax on

set background=dark
hi Normal ctermfg=lightgrey ctermbg=black
hi PreProc ctermfg=magenta
hi Statement ctermfg=darkYellow
hi Type ctermfg=cyan
hi Function ctermfg=blue
hi Identifier ctermfg=darkRed
hi Special ctermfg=green
hi Constant ctermfg=darkCyan
hi Comment ctermfg=darkGreen
au BufRead,BufNewFile *.rb hi rubySymbol ctermfg=yellow

autocmd FileType * setlocal fo-=cro
