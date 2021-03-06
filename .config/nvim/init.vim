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
  call dein#add('godlygeek/tabular.git')
  call dein#add('pivotal/tmux-config.git')
  call dein#add('bling/vim-airline.git')
  call dein#add('vim-airline/vim-airline-themes')
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
  call dein#add('Xuyuanp/nerdtree-git-plugin.git')
  call dein#add('majutsushi/tagbar')
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
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app & yarn install"' })
  call dein#add('rust-lang/rust.vim')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('dense-analysis/ale')
  call dein#add('chrisbra/unicode.vim')

  try
  " Javascript:
  source ~/.config/nvim/javascript-init.vim
  catch
  endtry
  
  " Required:
  call dein#end()
  call dein#save_state()

endif

" Required:
filetype plugin indent on
syntax enable

set mouse=a

" Fix highlighting for spell checks in terminal
function! s:base16_customize() abort
  " Colors: https://github.com/chriskempson/base16/blob/master/styling.md
  " Arguments: group, guifg, guibg, ctermfg, ctermbg, attr, guisp
  call Base16hi("SpellBad",   "", "", g:base16_cterm08, g:base16_cterm00, "", "")
  call Base16hi("SpellCap",   "", "", g:base16_cterm0A, g:base16_cterm00, "", "")
  call Base16hi("SpellLocal", "", "", g:base16_cterm0D, g:base16_cterm00, "", "")
  call Base16hi("SpellRare",  "", "", g:base16_cterm0B, g:base16_cterm00, "", "")
endfunction

set guifont=Iosevka\ Term:h20

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END


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
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_complete_done = 1

"call deoplete#custom#source('LanguageClient', 
      "\ 'min_pattern_length',
      "\ 1)

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#close_popup() . "\<CR>"
endfunction

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

nnoremap <silent> <Leader>b :call denite#start([{'name': 'buffer', 'args': []}])<CR>


" terraform
autocmd FileType terraform setlocal et sw=2 ts=2
autocmd FileType terraform setlocal omnifunc=syntaxcomplete#Complete
autocmd BufWritePre *.tf call terraform#fmt()

"python
let g:python_host_prog = '/home/thinktainer/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/thinktainer/.pyenv/versions/neovim3/bin/python3'
"let g:deoplete#sources#jedi#show_docstring = 1
let NERDTreeIgnore += ['\.pyc$']

let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

call deoplete#custom#option({
\ 'auto_complete_delay': 200,
\ 'smart_case': v:true,
\ 'auto_refresh_delay': 20,
\ })

call deoplete#custom#option('iggnore_sources', {'go': ['ale']})

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

autocmd BufNewFile,BufRead,BufEnter *.md setl et sw=4 ts=4

" Rust
autocmd BufReadPost *.rs setlocal filetype=rust
"
"let g:LanguageClient_autoStart=1
let g:LanguageClient_serverCommands = {
      \ 'rust': ['rust-analyzer'],
      \ 'go': ['gopls'],
      \ 'javascript': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ 'javascript.jsx': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ 'typescript': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ 'typescript.jsx': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ 'typescript.tsx': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ 'typescriptreact': ['/home/thinktainer/.nvm/versions/node/v14.7.0/bin/typescript-language-server', '--stdio'],
      \ }

let g:LanguageClient_rootMarkers = {
      \ 'rust': ['Cargo.toml'],
      \ 'go': ['go.mod'],
      \}

" Run gofmt and goimports on save
"let g:LanguageClient_hoverPreview = "Auto"
"let g:LanguageClient_selectionUI="location-list"
"let g:LanguageClient_trace="messages"
"let g:LanguageClient_diagnosticsEnable=1
let g:LanguageClient_changeThrottle = 0.01
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
    nnoremap <buffer> <silent> <Leader>l :call LanguageClient_contextMenu()<CR>
  endif
endfunction

let g:LanguageClient_settingsPath = '~/.config/nvim/languageserver-settings.json'

autocmd FileType * call LC_maps()

let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}
au FileType cucumber set sw=2 ts=2 et

" ALE:
let g:ale_linters = {
      \ 'python': ['flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tsserver', 'tslint'],
      \ 'vue': ['eslint'],
      \ 'terraform': ['terraform'],
      \ 'graphql': ['gqlint'],
      \ 'yaml': ['yamllint'],
      \ 'go': ['golangci-lint', 'gopls'],
\}

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['prettier', 'tslint'],
  \ 'vue': ['eslint'],
  \ 'scss': ['prettier'],
  \ 'html': ['prettier'],
  \ 'reason': ['refmt'],
  \ 'terraform': ['terraform'],
  \ 'graphql': ['gqlint'],
  "\ 'go': ['golangci-lint', 'gopls']
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_completion_enabled=0

"let g:ale_pattern_options = {'partner-event-booking-ui': {'ale_fixers': []}, 'partner-email': {'ale_fixers': []} }
nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error

try
  source ~/.config/nvim/terminal.vim
  source ~/.config/nvim/javascript.vim
  source ~/.config/nvim/go.vim
catch
endtry
