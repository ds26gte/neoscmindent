" Last modified 2019-11-09
" Dorai Sitaram

func! scmindent#GetScmIndent(lnum)
  return luaeval('require("scmindent").GetScmIndent(_A.lnum)', {'lnum': a:lnum})
endfunc
