" vim:sw=2:ts=2:et
"dein Scripts-----------------------------
set runtimepath+=/home/thinktainer/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/thinktainer/.local/share/dein')
  call dein#begin('/home/thinktainer/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/thinktainer/.local/share/dein/repos/github.com/Shougo/dein.vim')


  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('fsharp/vim-fsharp')
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \})
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#config('jedi-deoplete.vim', {
        \ 'lazy': 1, 'on_event': 'InsertEnter',
        \ })
  call dein#add('Townk/vim-autoclose.git')
  call dein#add('chriskempson/base16-vim.git')
  call dein#add('tpope/vim-fugitive.git')
  call dein#add('tpope/vim-rhubarb.git')
  call dein#add('mattn/gist-vim.git', {'depends': 'mattn/webapi-vim'})
  call dein#add('mattn/webapi-vim')
  call dein#add('scrooloose/nerdcommenter.git')
  call dein#add('scrooloose/syntastic.git')
  call dein#add('godlygeek/tabular.git')
  call dein#add('pivotal/tmux-config.git')
  call dein#add('bling/vim-airline.git')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('pangloss/vim-javascript.git')
  call dein#add('mxw/vim-jsx.git')
  call dein#add('tpope/vim-characterize.git')
  call dein#add('tpope/vim-ragtag.git')
  call dein#add('tpope/vim-surround.git')
  call dein#add('tpope/vim-unimpaired.git')
  call dein#add('Quramy/vison.git')
  call dein#config('vison.vim', {
        \ 'lazy': 1, 'on_event': 'InsertEnter',
        \ })
  call dein#add('hashivim/vim-terraform')
  call dein#add('Shougo/denite.nvim.git')
  call dein#add('scrooloose/nerdtree.git')
  call dein#add('majutsushi/tagbar')
  call dein#add('tomlion/vim-solidity')
  call dein#add('fatih/vim-go', {'branch': 'master'})
  call dein#config('go.vim', {
        \ 'lazy': 1, 'on_event': 'InsertEnter',
        \})
  call dein#add('davidhalter/jedi-vim')
  call dein#config('jedi-vim.vim', {
        \ 'lazy': 1, 'on_event': 'InsertEnter',
        \ })
  call dein#add('uarun/vim-protobuf')
  call dein#config('vim-protobuf.vim', {
        \ 'lazy': 1, 'on_event': 'InsertEnter',
        \ })
  call dein#add('cespare/vim-toml')
  call dein#add('wannesm/wmgraphviz.vim')
  call dein#add('iamcco/markdown-preview.vim')
  call dein#add('rust-lang/rust.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif


" Required:
filetype plugin indent on
syntax enable

set mouse=a

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

let g:dein#enable_notification=1

"End dein Scripts-------------------------

"splits

set splitbelow splitright

"leader
let mapleader=","

" search
set ignorecase
set smartcase

" disable bell!
set noeb vb t_vb=

" visual
set number
set scrolloff=3
set laststatus=2
set hidden

" undo
set undofile

" NERDTree
let NERDTreeChDirMode=2
nnoremap <Leader>n :NERDTreeToggle<Enter>


" html
au FileType html set sw=2 ts=2 et


au BufRead,BufNewFile *.json set filetype=json
au FileType json setl sw=2 ts=2 et


" reload changed files automatically
set autoread

" erlang
au FileType erlang set sw=2 ts=2 et
let NERDTreeIgnore=['\.beam$', '\~$']


" airline
let g:airline_powerline_fonts=1
let g:airline_theme='laederon'

"editorconfig
"let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

"tslime
let g:tslime_ensure_trailing_newlines=1

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


if executable('rg')
  call denite#custom#var('file_rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',
        \ ['--vimgrep', '--no-heading'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif

"use deoplete
"neocomplete like
"set completeopt+=noinsert
"deoplete.nvim recommend
"set completeopt+=noselect
let g:deoplete#enable_at_startup=1
call deoplete#custom#source('LanguageClient', 
      \ 'min_pattern_length',
      \ 2)

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> v
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

call denite#custom#option('default', {
      \ 'direction': 'dynamictop'
      \})

nnoremap <Leader>b :call denite#start([{'name': 'buffer', 'args': []}])<CR>


" terraform
autocmd FileType terraform setlocal et sw=2 ts=2
autocmd FileType terraform setlocal omnifunc=syntaxcomplete#Complete
autocmd BufWritePre *.tf call terraform#fmt()

"python
let g:python_host_prog = '/home/thinktainer/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/thinktainer/.pyenv/versions/neovim3/bin/python3'
"let g:deoplete#sources#jedi#show_docstring = 1
let NERDTreeIgnore += ['\.pyc$']
let g:syntastic_python_checkers = ["pep8"]

" go
let g:go_snippet_engine = "neosnippet"
let g:syntastic_go_checkers = ['syntastic-go-gometalinter']
let g:go_list_type = "quickfix"
let g:go_term_enabled = 0
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
let g:go_term_enabled = 1
let g:go_term_mode = "split"
let g:go_metalinter_command = "golangci-lint"
let g:go_def_mode = 'gopls'
let g:go_metalinter_enabled = ['deadcode', 'errcheck', 'ineffassign', 'structcheck', 'typecheck', 'varcheck', 'gosimple', 'govet', 'staticcheck', 'unused', 'golint'] 

let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

call deoplete#custom#option({
\ 'auto_complete_delay': 200,
\ 'smart_case': v:true,
\ 'auto_refresh_delay': 20,
\ })

" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory = "~/.config/nvim/snippets"

" yaml
au FileType yaml set shiftwidth=2

" gist
let g:gist_get_multiplefile = 1

" csharp
au FileType cs set shiftwidth=4 tabstop=4 expandtab

" match parentheses
let loaded_matchparen = 1

vnoremap <Leader>64e c <c-r>=system('base64 -w0', @")<cr><esc>
vnoremap <Leader>64d c <c-r>=system('base64 --decode', @")<cr><esc>

autocmd BufNewFile,BufRead,BufEnter *.jcl,*PP@.[tT][xX][tT],*[jJ][cC]@.[tT][xX][tT] setl ft=jcl

" Rust
autocmd BufReadPost *.rs setlocal filetype=rust
"
"let g:LanguageClient_autoStart=1
let g:LanguageClient_serverCommands = {
      \ 'rust': ['rustup', 'run', 'stable', 'rls'],
      \ 'go': ['gopls'],
      \ 'javascript': ['/home/thinktainer/.nvm/versions/node/v10.16.2/bin/javascript-typescript-stdio'],
      \ 'javascript.jsx': ['/home/thinktainer/.nvm/versions/node/v10.16.2/bin/javascript-typescript-stdio'],
      \ 'typescript': ['/home/thinktainer/.nvm/versions/node/v10.16.2/bin/javascript-typescript-stdio'],
      \ }

let g:LanguageClient_rootMarkers = {
      \ 'rust': ['Cargo.toml'],
      \ 'go': ['go.mod'],
      \}

" Run gofmt and goimports on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
let g:LanguageClient_hoverPreview = "Auto"
"let g:LanguageClient_selectionUI="location-list"
"let g:LanguageClient_trace="messages"
"let g:LanguageClient_diagnosticsEnable=1
let g:LanguageClient_changeThrottle = 0.00
let g:LanguageClient_windowLogMessageLevel="Warning"
let g:LanguageClient_loggingLevel='WARN'

nnoremap <Leader>t i<C-v>u2713<esc>
nnoremap <silent> <Leader>m :make build<CR>

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> <C-]> :call LanguageClient_textDocument_definition()<CR>
    nnoremap <buffer> <silent> <Leader>gr :call LanguageClient_textDocument_rename()<CR>
    nnoremap <buffer> <silent> <Leader>f :call LanguageClient_textDocument_formatting()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()

let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}
au FileType cucumber set sw=2 ts=2 et

try
  source ~/.config/nvim/terminal.vim
  source ~/.config/nvim/javascript.vim
catch
endtry
