" Last modified 2022-08-06
" Dorai Sitaram

" This after/indent file is offered for convenience. In a typical
" setting, where this repo is unpacked into your nvim config
" tree, this file will ensure that filetypes 'lisp' and 'scheme'
" use the scmindent indenter. (Vim's indent/scheme.vim
" automatically loads all indent/lisp.vim files it finds, so
" there is no need for an after/indent/scheme.vim.)
"
" You may prefer to set 'inde', etc. for your preferred filetypes
" in your own way.

if has('nvim')
  " if using Neovim, use the indenting function from scmindent.lua
  setl ep=
  setl inde=scmindent#GetScmIndent(v:lnum)
else
  " if using Vim, use scmindent.lua as a filter
  if executable('lua')
    exec 'setl ep=' . expand('<sfile>:h') . '/../../lua/scmindent.lua'
  endif
endif

" if empty($NVIM_LISPWORDS)
"  let $NVIM_LISPWORDS = expand('<sfile>:h') . '/../../customization/nvimlispwords.lua'
" endif
"
" if empty($LISPWORDS)
"   let $LISPWORDS = expand('<sfile>:h') . '/../../customization/.lispwords.lua'
" endif

" removing `if` from 'lw' gives it a LIN of -1.
" This gives `if` its statistically most popular indentation.

setl lw-=if

" 'lisp' intereferes with both 'ep' and 'inde', so unset it

setl nolisp
