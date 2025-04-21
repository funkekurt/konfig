
syntax on
set number		    " Zeilennummern anzeigen
set incsearch		  " Zeigt Suchergebnisse während des Suchens an
set hlsearch		  " Suchergebnisse farbig anzeigen
set viminfo+=n		" Zum Erstelllen von sessions
" set tags+=$HOME/RoNet/programmieren/Cpp	 " Ctags
set nocompatible
" set backup			" Erstellt eine ~ Backupdatei	
set lbr						" line break
set tw=80					" Zeilenlänge
set tabstop=2
set path+=**		" Finden in Subordner
set wildmenu		" Zeigt bei Verwenden von find alle Dateien in einem Menü
set showcmd			" Zeigt das eingegebene Kommando rechts unten an

color desert

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
:ab MfG Mit freundlichen Grüßen<CR>Admin
:ab snip ------------------------------------------------------
:ab Programmkopf Author: Admin<CR>Programmname: <CR>Version: <CR>Datum: <CR>Beschreibung: <CR><CR><CR>
:ab html_basic <html><CR><head><title>yyy</head></title><CR><body><CR><CR><CR></body><CR></html>
:ab html_link <a href=" "> LINK </a> 
:ab sft <C-R>=strftime("%Y-%m-%d %H:%M %Z")<cr>
:ab rahmen <CR> #include <stdio.h><CR>#include <stdlib.h><CR><CR>void main()<CR>{<CR><CR><CR>}
:ab shebang #!/usr/bin/env python3
:iabbrev <expr> ddd strftime("%c")
