function! myconfig#after() abort
  set ts=4
  set sw=4
  set cc=100
  set tw=100
  set cinoptions=0(
  set expandtab

  nnoremap <F12> :%s###g<Left><Left>
endfunction
