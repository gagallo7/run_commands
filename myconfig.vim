" ~/.SpaceVim.d/autoload/myconfig.vim

function! myconfig#after() abort
    set ts=4
    set sw=4
    set cc=100
    set tw=100

    set cinoptions=0(
    set cino+=N-s
    set cino+=g0

    set expandtab

    " Cscope hive
    " Use cscope absolute paths
    set csre
    cs add ../cscope.out
    nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
    nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
    nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
    nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
    nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
    nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
    nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>  

    " ctags command center
    " Make tags chase upwards directories until find a tags file
    set tags=tags;/

    silent! iunmap jk
    silent! nunmap <C-x>

    nnoremap <F12> :<C-\>eCmapReplace("<C-r><C-w>", "")<CR>
    vnoremap <F12> "ay:<C-\>eCmapReplace("<C-r>a", "")<CR>

    nnoremap <F10> :<C-\>eCmapReplace("<C-r><C-w>", "<C-r><C-w>")<CR>
    vnoremap <F10> "ay:<C-\>eCmapReplace("<C-r>a", "<C-r>a")<CR>
endfunction

function! CmapReplace(pattern, replacement)
    let cmd = ":%s#\\<" . a:pattern . "\\>#" . a:replacement .  "#g"
    call setcmdpos(strlen(cmd) - 1)
    return cmd
endfunction
