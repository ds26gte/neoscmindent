--[[
last modified 2019-11-13
created 2017-7-29
Dorai Sitaram

Customization file used when

   setl ep=scmindent.lua

Associates a Lisp indent number (LIN) with a Lisp keyword. If keyword A's LIN
is N, and a Lisp form introduced by A is split across lines, then if the Ith
subform starts one such line, that line is indented by 3 columns past A if I <=
N, and by 1 column past A otherwise.

As scmindent.lua is an external filter, it does not have access to the keywords
in the 'lispwords' option, and so it must set appropriate LINs for all of them
too.

Set $LISPWORDS to the name of this file.

--]]

return {
  ['call-with-input-file'] = 1,
  ['case'] = 1,
  ['do'] = 2,
  ['do*'] = 2,
  ['dolist'] = 1,
  ['flet'] = 1,
  ['fluid-let'] = 1,
  ['if'] = 2,
  ['lambda'] = 1,
  ['let'] = 1,
  ['let*'] = 1,
  ['letrec'] = 1,
  ['let-values'] = 1,
  ['multiple-value-bind'] = 2,
  ['unless'] = 1,
  ['when'] = 1,
  ['with-open-file'] = 1,
}
