" Last modified 2017-12-08
" Dorai Sitaram

func! scmindent#GetScmIndent(lnum)
  return luaeval('require("scmindent").GetScmIndent(_A.lnum)', {'lnum': a:lnum})
endfunc
