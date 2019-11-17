" Last modified 2019-11-17
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
  " if not in Neovim, we can only use one of the filters
  if executable('lua')
    exec 'setl ep=' . expand('<sfile>:h') . '/../../lua/scmindent.lua'
    if empty($LISPWORDS)
      let $LISPWORDS = expand('<sfile>:h') . '/../../customization/.lispwords.lua'
    endif

  elseif executable('racket')
    exec 'setl ep=' . expand('<sfile>:h') . '/../../filter/scmindent.rkt'
    if empty($LISPWORDS)
      let $LISPWORDS = expand('<sfile>:h') . '/../../customization/.lispwords'
    endif

  elseif executable('ecl') || !empty($LISP)
    exec 'setl ep=' . expand('<sfile>:h') . '/../../filter/lispindent.lisp'
    if empty($LISPWORDS)
      let $LISPWORDS = expand('<sfile>:h') . '/../../customization/.lispwords'
    endif

  elseif executable('js')
    exec 'setl ep=' . expand('<sfile>:h') . '/../../filter/scmindent.js'
    if empty($LISPWORDS)
      let $LISPWORDS = expand('<sfile>:h') . '/../../customization/lispwords.json'
    endif
  endif
endif

if empty($NVIM_LISPWORDS)
  let $NVIM_LISPWORDS = expand('<sfile>:h') . '/../../customization/nvimlispwords.lua'
endif


" removing `if` from 'lw' gives it an LIN of -1.
" This gives `if` its statistically most popular indentation.

setl lw-=if

" 'lisp' intereferes with both 'ep' and 'inde', so unset it

setl nolisp
