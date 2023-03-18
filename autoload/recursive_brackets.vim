function! s:RecursiveBracketsMain(message, count)
  const result = s:RecursiveBrackets(a:message, a:count, a:message)
  s:SetRegister(result)
endfunction

function! s:RecursiveBrackets(message, count, result)
  if a:count <= 1
    return a:result
  else
    return s:RecursiveBrackets(a:message, (a:count - 1), (a:message . '(' . a:result . ')'))
  endif
endfunction

function! s:SetRegister(message)
  let @* = s:message
  let @" = s:message
endfunction
