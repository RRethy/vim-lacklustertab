if exists('g:loaded_lacklustertab')
  finish
endif
let g:loaded_lacklustertab = 1

fun! s:tab()
    let col = col('.')
    let line = getline('.')
    echom line[:col-2]
    if col == 1 || line[:col-2] =~# '\v(^\s|\W\s)$'
        return "\<Tab>"
    else
        return "\<C-N>"
    endif
endf

inoremap <silent> <Tab> <C-R>=<SID>tab()<CR>
