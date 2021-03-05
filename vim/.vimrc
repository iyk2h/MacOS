" Syntax Highlight
if has("syntax")
	syntax on
endif

set autoindent "자동들여쓰기
set cindent "c자동 들여쓰기

set ts=4 "tag select
set sts=4 "st select
set shiftwidth=4 "자동 들여쓰기 너비 설정
set showmatch "일치하는 괄호 하이라이팅

set ruler "현재 커서 위치 표시
set number
set title

set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시

set backspace=indent,eol,start

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"-----
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

"------
" use Ctrl+L to toggle the line number counting method
" either normal, or relative to the current line
" that way you can easily see the number to type after y or d
" without having to actually count
function! g:ToggleNuMode()
	if(&rnu == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc
nnoremap <C-L> :call g:ToggleNuMode()<cr>
