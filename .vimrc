
syntax on
colorscheme ron 
set number		    " Zeilennummern anzeigen
" set relativenumber " Zeilennummer relativ
set incsearch		  " Zeigt Suchergebnisse während des Suchens an
set hlsearch		  " Suchergebnisse farbig anzeigen
set autoindent

set viminfo+=n		" Zum Erstellen von sessions
" set tags+=$HOME/RoNet/programmieren/Cpp	 " Ctags
set nocompatible
" set backup			" Erstellt eine ~ Backupdatei	
set lbr						" line break

" Tab Einstellungen
set tw=80					" Zeilenlänge
set tabstop=2
" set list					" Zeigt Tab an
set bg=dark
set et ts=2 sw=2 ai

set path+=**		" Finden in Subordner
set wildmenu		" Zeigt bei Verwenden von find alle Dateien in einem Menü
set showcmd			" Zeigt das eingegebene Kommando rechts unten an


set ls=2				" Zeigt Dateinamen an
set showmode		" Zeigt den Modus an (insert, replace usw.)

" Rechtschreibprüfung
" set spell
" set spelllang=en,de

" Return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" ~/Skeleton *.sh
autocmd BufNewFile *.sh 0r ~/skeletons/bash.sh
autocmd BufNewFile *.py 0r ~/skeletons/python.py

cmap w!! w! sudo tee > /dev/null %	" Speichern von schreibgeschützten Dateien

:hi mailHeader 		ctermfg=Gray
:hi mailSubject 	ctermfg=Green
:hi mailEmail		ctermfg=Blue
:hi mailSignature 	ctermfg=Gray
:hi mailQuoted1		ctermfg=Darkyellow
:hi mailQuated2		ctermfg=Green


filetype on		      " Filtertype-Erkennung aktivieren
filetype indent on	" Syntax-Einrückungen je nach Filtertype
filetype plugin on	" Filetype-Plugins erlauben

"python
autocmd Filetype python :iabbrev ppp #!/usr/bin/env python3<cr><cr>import os<cr>import bibliothek<cr><left><left><left>
"java
autocmd Filetype java :iabbrev ppp <cr>public static void main(String[] args)<cr>{<cr><cr>}<cr><left><left><left>
"C
autocmd Filetype c :iabbrev ppp printf("Start C ")<cr><cr><left><left><left>
"C++
autocmd Filetype cpp :iabbrev ppp print("Start C++ ")<cr><cr><left><left><left>

:ab SgD Sehr geehrte Damen und Herren,
:ab MfG Mit freundlichen Grüßen<CR>Kurt Funke
:ab snip ------------------------------------------------------
:ab Programmkopf Author: Kurt Funke<CR>Programmname: <CR>Version: <CR>Datum: <CR>Beschreibung: <CR><CR><CR>
:ab html_basic <html><CR><head><title>yyy</head></title><CR><body><CR><CR><CR></body><CR></html>
:ab html_link <a href=" "> LINK </a> 
:ab sft <C-R>=strftime("%Y-%m-%d %H:%M %Z")<cr>
:ab rahmen <CR> #include <stdio.h><CR>#include <stdlib.h><CR><CR>void main()<CR>{<CR><CR><CR>}
:ab shebang #!/usr/bin/env python3
:iabbrev <expr> ddd strftime("%c")

