" Vim filetype plugin
" Language:		Markdown
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim

setlocal comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
setlocal formatoptions+=tcqln formatoptions-=r formatoptions-=o
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= "|setl cms< com< fo< flp<"
else
  let b:undo_ftplugin = "setl cms< com< fo< flp<"
endif

" Surround.vim bindings - install surround.vim first
let b:surround_43 = "{++\r++}" " +
let b:surround_45 = "{--\r--}" " -
let b:surround_104 = "{==\r==}{>>\1comment: \1<<}" " h
let b:surround_99 = "{>>\r<<}" " c
let b:surround_126 = "{~~\r->\1substitution: \1~~}" " ~

" vim:set sw=2:
