set nocompatible
so ~/.vim/config/plugins.vim

"---General---"
so ~/.vim/config/general.vim

"---Visual---"
so ~/.vim/config/visual.vim

"---Keybinding---"
so ~/.vim/config/keymap.vim

"---Plugins---"
so ~/.vim/config/plugins_settings.vim

"---Auto-Commands---"
so ~/.vim/config/autocommands.vim

"---Tips---"
" [key]+i+[char] - action (key) performed on text wrapped into the specified char
" ctrl+altgr+) - go to the called method's definition
" ,+t - :tag
" vim surround : c+s+[oldchar][newchar] - change surrounding char
" 		 d+s+[char] - delete surrounding char
"		 c+s+t - change surrounding tag (HTML)
"		 S (cap) - add a new tag (HTML) surrounding the selected text
"		 d+s+t - delete surrounding tag (HTML)
" J (cap) - join current line with next one
