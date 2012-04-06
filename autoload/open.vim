" =============================================================================
" Public Interface
" =============================================================================

function open#Open(path)
  call s:OpenUsing(a:path, "edit")
endfunction

function open#OpenHorizontal(path)
  call s:OpenUsing(a:path, "split")
endfunction

function open#OpenVertical(path)
  call s:OpenUsing(a:path, "vsplit")
endfunction

" =============================================================================
" Private Interface
" =============================================================================

function s:OpenUsing(path, command)
  if a:path > string(0)
    let path_buffer = bufnr(a:path)
    let path_window = bufwinnr(a:path)
    if path_window > 0
      execute path_window . 'wincmd w'
      execute path_buffer . 'buffer'
    else
      execute a:command . " ". a:path
    endif
  else
    echom "Nothing to open."
  end
endfunction

