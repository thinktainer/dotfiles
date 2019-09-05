" javascript
let g:flow#autoclose=1
au FileType javascript setl sw=2 et
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
"autocmd bufwritepost *.js silent !standard-format -w %
let g:syntastic_json_checkers = ['jsonlint']
"let g:tern_request_timeout = 1
"let g:tern#command = ["tern"]
"let g:tern#arguments = ["--persistent"]
au FileType javascript let maplocalleader=","
