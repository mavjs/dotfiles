" Source: https://github.com/mavjs/dotfiles

" Initial configs {{{
    set runtimepath^=~/.vim/bundle/ctrlp.vim
    set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim
    set laststatus=2 " to show status line with airline
" }}}

" Initialise Pathogen {{{
    execute pathogen#infect()
" }}}

" Configs {{{
    syntax enable
    " EditorConfig {{{
        " let g:EditorConfig_exclude_patterns=['fugitive://.*', 'scp://.*']
    " }}}
    set encoding=utf-8 " unicode encoding by default
    set title " show title in terminal
    set number " show line numbers
    set hlsearch " highlight matches
    set incsearch " search as characters are entere
    set showmatch " highlight matching parentheses
    set cursorline
    set wildignore=*.swp,*.bak,*.pyc,*.class
    set noswapfile
    set smartindent
    set expandtab " tab to spaces
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
" }}}
" Environment (GUI/Console) {{{
    colorscheme dracula
" }}}

" Keymappings {{{
    " remap : to ;, vice-versa {{{
        nnoremap ; :
        nnoremap : ;
    " }}}
    " clear search with double Return {{{
        nnoremap <CR> :noh<CR><CR>
    " }}}
    " move with Ctrl+<movement key> {{{
        map <c-j> <c-w>j
        map <c-k> <c-w>k
        map <c-l> <c-w>l
        map <c-h> <c-w>h
    " }}}
    " mappings for plugins {{{
        map <leader>td <Plug>TaskList
        nnoremap <leader>n :NERDTreeToggle<CR>
        nnoremap <leader>tg :TagbarToggle<CR>
    " }}}
" }}}

" Configs based on Filetype {{{
    au FileType yaml,html,js setlocal ts=2 sw=2 sts=2
    " python files {{{
"        au BufNewFile,BufRead *.py
"            \ set tabstop=4 |
"            \ set softtabstop=4 |
"            \ set shiftwidth=4 |
"            \ set textwidth=80 |
"            \ set expandtab |
"            \ set autoindent |
"            \ set fileformat=unix
    " }}}
    " .js, .html, .css files {{{
"        au BufNewFile,BufRead *.js,*.html,*.css
"            \ set tabstop=2 |
"            \ set softtabstop=2 |
"            \ set shiftwidth=2
    " }}}
" }}}
