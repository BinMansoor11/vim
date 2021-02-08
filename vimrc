set nocompatible              " be iMproved, required
filetype off                  " required



" set the runtime path to inclfiletype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this li

"Nerdtree highlighting

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:DevIconsEnableFoldersOpenClose = 1

" you can add these colors to your .vimrc to help customizing
let s:blue = "689FB6"


let g:WebDevIconsDefaultFolderSymbolColor = s:blue " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

execute pathogen#infect()
syntax on

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set smartindent

set number
set relativenumber
set incsearch
set backspace=indent,eol,start
set nobackup
set noswapfile

set autoread

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimEnter * NERDTree
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let mapleader = " "
set path+=/home/talha/**100
set suffixesadd+=.js

"set ruler
"set rulerformat=%55(%{strftime('%b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
"yeh  pura editor is file main VG=na hua hai. or pura code mainay kia hai copy
"paste of course pr buht dimagh lga ka.kaisa lga? idhr type kr sktay ho


nnoremap <leader>s :w<CR>
nnoremap <leader>e :e<CR>
inoremap jj <Esc>
nnoremap <leader>v <c-w>v
nnoremap <leader>x <c-w>x
nnoremap <leader>w <c-w>w
inoremap <tab><tab> <c-x><c-o>
nnoremap hh  <c-w>h
nnoremap ll  <c-w>l
nnoremap <leader>j <c-d>
nnoremap <leader>k <c-u>
nnoremap <leader>r <c-^>

nnoremap <leader>a :source % <CR>

nnoremap <leader>t :ter <CR>
nnoremap <leader>n :NERDTreeToggle <CR>
nnoremap <leader>q :q!<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"new ones

nnoremap <leader>h H
nnoremap <leader>l L
nnoremap <leader>m M
nnoremap <leader>,  <c-w><
nnoremap <leader>.  <c-w>>

let g:vim_jsx_pretty_enable_jsx_highlight=1
let  g:airline_section_b=  '%{strftime("%c")}'
let  g:airline_section_y=  'BN: %{bufnr("%")}'
let g:airline_powerline_fonts = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript':['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


let g:ale_list_window_size = 3
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_aggregate_errors = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:vim_jsx_pretty_colorful_config = 0

let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync



set runtimepath^=~/.vim/bundle/ctrlp.vim

set background=dark
colorscheme gruvbox
set encoding=UTF-8

set mouse=
set ttymouse=
