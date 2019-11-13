--[[
Last modified: 2019-11-13
Dorai Sitaram

Customization file when

   setl inde=scmindent#GetScmIndent(v:lnum)

Associates a Lisp indent number (LIN) with a Lisp keyword. If keyword A's LIN
is N, and a Lisp form introduced by A is split across lines, then if the Ith
subform starts one such line, that line is indented by 3 columns past A if I <=
N, and by 1 column past A otherwise.

This file doesn't have to cover most of the keywords in the 'lispwords' option,
as the indenting function already has access to them and will assign them a LIN
of 0.

Set $NVIM_LISPWORDS to the name of this file.

--]]

return {
  ['do'] = 2,
  ['do*'] = 2,
}
