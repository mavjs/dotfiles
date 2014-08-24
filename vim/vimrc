" trying to switch off filetype
filetype off
" Disabling vi compatibility
set nocompatible

" Initializing pathogen.....
call pathogen#infect()
syntax on

" Initializing Colour Scheme.....
set background=dark
colorscheme molokai

" Getting some vim swag on!
filetype on
filetype plugin indent on
set foldmethod=indent
set foldlevel=99
set laststatus=2 " to show status line
set cursorline
set cursorcolumn
set shellslash
set expandtab
set autoindent
set smartindent
set shell=zsh
set tabstop=4
set shiftwidth=4
set history=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set number
set title
set wrap
set ruler
set colorcolumn=80
set t_Co=256
"set nobackup
"set noswapfile
set pastetoggle=<F10>
set completeopt=menuone,longest,preview
set statusline=%{fugitive#statusline()}\ %t\ %y\ format:\ %{&ff}\ [\%c\,\%l\]\ %P 
"set statusline=%t\ %y\ format:\ %{&ff}\ [\%c\,\%l\]\ %P 

" remap : and ;
nnoremap ; :
nnoremap : ;

" Key mappings
" move with Ctrl+<movement key>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" mappings for plugins
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

" Py.test mappings
" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>


nmap <leader>a <ESC>:Ack!

" Getting some extra functionalities~
let g:molokai_original = 1
let g:rehash256 = 1
let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs,angularui,requirejs,jasmine'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "bottom"
let g:jedi#popup_select_first = 1
let g:pyflakes_use_quickfix = 1
let g:pep8_map='<leader>8'
let g:tex_flavor="latex"
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
let lint_default = 1
let disable_lint = 0
let g:SuperTabDefaultCompletionType = "context"
let g:mustache_abbreviations = 1
let g:nodejs_complete_config = {
            \ 'js_compl_fn': 'jscomplete#CompleteJS',
            \ 'max_node_compl_len': 15
            \}
let d8_command = '/usr/local/bin/v8'

" Virtualenv Hilighting
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Modes for files
au FileType javascript call JavaScriptFold()
au FileType python set omnifunc=pythoncomplete#Complete
au BufNewFile,BufRead *.zcml set filetype=xml
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
augroup mkd
      autocmd BufRead *.mkd *.md *.markdown set ai formatoptions=tcroqn2  shiftwidth=4 comments=n:> ft=markdown
      " autocmd BufRead *.md set ai formatoptions=tcroqn2 comments=n:> ft=markdown
      " autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> ft=markdown
augroup END
autocmd FileType asm set ai formatoptions=tcrmqn2 comments=n:> ft=nasm
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=white
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey
