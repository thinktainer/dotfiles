" go
let g:go_snippet_engine = "neosnippet"
"let g:syntastic_go_checkers = ['golint', 'govet', 'golangci-lint']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:go_list_type = "quickfix"
let g:go_rename_command = 'gopls'
au FileType go let maplocalleader=","
au FileType go nmap <LocalLeader>a <Plug>(go-alternate-edit)
au FileType go nmap <LocalLeader>r <Plug>(go-run)
au FileType go nmap <LocalLeader>m <Plug>(go-build)
au FileType go nmap <LocalLeader>t <Plug>(go-test)
au FileType go nmap <LocalLeader>c <Plug>(go-coverage)
au FileType go nmap <LocalLeader>ds <Plug>(go-def-split)
au FileType go nmap <LocalLeader>dv <Plug>(go-def-vertical)
au FileType go nmap <LocalLeader>dt <Plug>(go-def-tab)
au FileType go nmap <LocalLeader>gd <Plug>(go-doc)
au FileType go nmap <LocalLeader>gv <Plug>(go-doc-vertical)
au FileType go nmap <LocalLeader>gb <Plug>(go-doc-browser)
au FileType go nmap <LocalLeader>s <Plug>(go-implements)
au FileType go nmap <LocalLeader>i <Plug>(go-info)
au FileType go nmap <LocalLeader>gr <Plug>(go-rename)
au FileType go nmap <LocalLeader>l <Plug>(go-metalinter)
au FileType go nmap <LocalLeader>ct <Plug>(go-test-compile)
au FileType go nmap <LocalLeader>h <Plug>(go-test-func)
au FileType go setlocal ts=8 sw=8 noet nolist
au FileType go setlocal foldmethod=syntax
au FileType go setlocal foldlevelstart=100
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_term_enabled = 0
let g:go_term_mode = "split"
let g:go_def_mode = 'gopls'
let g:go_metalinter_deadline = "10s"
let g:go_fmt_options = {
  \ 'gofmt': '-s',
  \ 'goimports': '-local github.com/utilitywarehouse',
  \ }
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
