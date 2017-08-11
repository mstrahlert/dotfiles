set history=700

filetype plugin on
filetype indent on

set shiftwidth=2
set softtabstop=2

"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

function! CurDir()
    let curdir = substitute(getcwd(), "$HOME", "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction


set number
set ruler

set nobackup
set nowb
set noswapfile

set laststatus=2
