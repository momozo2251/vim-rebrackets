function! recursive_brackets#RecursiveBracketsMain(message, count)
  const result = s:RecursiveBrackets(a:message, a:count, a:message)
  call s:SetRegister(result)
  echo 'yanked: ' . result
endfunction

function! s:RecursiveBrackets(message, count, result)
  if a:count <= 1
    return a:result
  else
    return s:RecursiveBrackets(a:message, (a:count - 1), (a:message . '(' . a:result . ')'))
  endif
endfunction

function! s:SetRegister(message)
  let @* = a:message
  let @" = a:message
endfunction
