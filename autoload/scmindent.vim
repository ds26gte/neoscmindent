" Last modified 2019-11-10
" Dorai Sitaram

let s:scmindentObj = 'require("scmindent").GetScmIndent(_A.lnum)'

func! scmindent#GetScmIndent(lnum)
  return luaeval(s:scmindentObj, {'lnum': a:lnum})
endfunc
