--[[
.lispwords.lua
Dorai Sitaram
Last modified: 2018-09-12

Associates an indent number with a Lisp keyword. If keyword A's indent number
is N, and a Lisp form introduced by A is split across lines, then if the Ith
subform starts one such line, that line is indented by 3 columns past A if I <=
N, and by 1 column past A otherwise. This file should be placed in $HOME.
--]]

return {
  ['do'] = 2,
  ['do*'] = 2,
}
