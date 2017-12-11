"sd Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

""""""""""""""""""""""""""""""""""
" Vundle settings and plugins
""""""""""""""""""""""""""""""""""
filetype off                    " force reloading *after* pathogen loaded

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-surround'
Plugin 'uarun/vim-protobuf'
Plugin 'taq/vim-git-branch-info'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tomtom/tlib_vim'
Plugin 'majutsushi/tagbar'
Plugin 'gre/play2vim.git' 
Plugin 'othree/html5.vim' 
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/L9'
Plugin 'wikitopian/hardmode'
Plugin 'vim-scripts/Align'
Plugin 'rking/ag.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'luochen1990/rainbow'
Plugin 'jtai/vim-womprat'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'derekwyatt/vim-sbt'
Plugin 'elzr/vim-json'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'mkitt/tabline.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'kennethzfeng/vim-raml'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'grassdog/tagman.vim'

" tmux colorscheme
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'

" Colorscheme plugins
Plugin 'endel/vim-github-colorscheme'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/ScrollColors'
Plugin 'nanotech/jellybeans.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'mtglsk/mushroom'

" python
Plugin 'hdima/python-syntax'

" tablur plugin is required for vim-markdown below.
" and it must come before vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'mattly/vim-markdown-enhancements'

" NodeJS & javascript  Plugins
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'sidorares/node-vim-debugger'
Plugin 'mxw/vim-jsx'

" Haskell
Plugin 'neovimhaskell/haskell-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""
" VIM General settings
""""""""""""""""""""""""""""""""""
" On even hour, use dark colortheme
" On odd hour, use light colortheme
set t_Co=256                    " enables 256 colors
syntax enable
set encoding=utf-8

"let hour = strftime("%S")
"if hour % 2 == 0
  set background=dark
  let g:seoul256_background = 233
  colo seoul256
"else
"  set background=light
"  let g:seoul256_light_background = 256
"  colo seoul256-light
"endif

set autoread          " vim reads the file when it changes
set noundofile
set mouse=a
set switchbuf=useopen " reveal already opened files from the
                      " quickfix window instead of opening new
                      " buffers
set history=1000      " remember more commands and search history
set undolevels=1000   " use many muchos levels of undo
set hidden            " hide buffers instead of closing them this
                      " means that the current buffer can be put
                      " to background without being written; and
                      " that marks and undo history are preserved
set nobackup          " do not keep backup files, it's 70's style cluttering
set noswapfile        " do not write annoying intermediate swap files,
set showcmd           " show the command being typed
set ruler             " Always show current positions along the bottom
set nostartofline     " leave my cursor where it was
set colorcolumn=120   " highlight maximum line length
set cursorline        " highlight current line
set number
set numberwidth=5     " We are good up to 99999 lines
set backspace=2       " make backspace work like most other apps
set paste             " set paste mode

let g:jsx_ext_required    = 0 "If you would like JSX in .js files
let delimitMate_expand_cr = 1

" Vim file tree setting
" d creates a new directory
" % creates and opens a new file
" D deletes a directory or file
" R renames a file
" o opens the file in a horizontal split
" v opens the file in a vertical split
let g:netrw_liststyle=3 
let g:netrw_winsize = 1

" Neocompletecache setting
let g:neocomplcache_enable_at_startup = 1
""""""""""""""""""""""""""""""""""
" Hide tool bar for macvim
""""""""""""""""""""""""""""""""""
if has("gui_running")
    set guioptions=egmrt
endif

""""""""""""""""""""""""""""""""""
" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
""""""""""""""""""""""""""""""""""
"filetype indent on
"filetype on
set autoindent     " Copy indent from the row above
set si             " Smart indent

""""""""""""""""""""""""""""""""""
"set font
""""""""""""""""""""""""""""""""""
set gfn=D2Coding:h15

""""""""""""""""""""""""""""""""""
" set nu " Number lines
""""""""""""""""""""""""""""""""""
set hls " highlight search
set lbr " linebreak

""""""""""""""""""""""""""""""""""
" Use 2 space instead of tab during format
""""""""""""""""""""""""""""""""""
set tabstop=2     " determines how many space tap should be counted for when tab is read
set expandtab
set shiftwidth=2
set softtabstop=2 " determines how many space tap should be countered for when tab key is hit

" For Python
autocmd Filetype python setlocal ts=2 sw=2 expandtab

""""""""""""""""""""""""""""""""""
" NERD Tree
""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1
""""""""""""""""""""""""""""""""""
" Scala Support For TagBar
""""""""""""""""""""""""""""""""""
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }


""""""""""""""""""""""""""""""""""
" GIT set-ups
""""""""""""""""""""""""""""""""""
set laststatus=2                          " Enables the status line at the bottom of Vim
set statusline=%{GitBranchInfoString()}\ \ \ \ \ %f
let g:git_branch_status_head_current=1    " Display only the current branch

""""""""""""""""""""""""""""""""""
" CTags 
""""""""""""""""""""""""""""""""""
set tags=./tags;/

""""""""""""""""""""""""""""""""""
" Search Highlights
""""""""""""""""""""""""""""""""""
set hlsearch            " turn off highlight searches, but:
                        " Turn hlsearch off/on with CTRL-N
:map <silent> <C-N> :se invhlsearch<CR>

""""""""""""""""""""""""""""""""""
" Key Maps
""""""""""""""""""""""""""""""""""
set pastetoggle=<F1>                          " retain original indents when pating
map <F2> :TagbarToggle<CR>                    " Tagbar Toggle
"map <F3> :NERDTreeToggle<CR>                  " NERDTree Togle
call togglebg#map("<F5>")                     " Color theme background switch
"map <F7> :FufBuffer<CR> 
"map <D-N> :FufFile<CR>
"map <F4> :FufTag<CR>
"map <F6> :CommandT<CR>
"imap jj <Esc>
""""""""""""""""""""""""""""""""""
" Rainbow Parentheses
""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf   = {
\   'ctermfgs': ['darkblue', 'darkgreen', 'darkcyan', 'darkmagenta']
\}

""""""""""""""""""""""""""""""""""
" Control c to copy
""""""""""""""""""""""""""""""""""
vnoremap <C-c> "*y

""""""""""""""""""""""""""""""""""
" Control P Option
""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CommandT'

set wildignore+=*/tmp/*,*/target/*,*.so,*.swp,*.zip,*.tag  

""""""""""""""""""""""""""""""""""
" Neocomplcache 
""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

""""""""""""""""""""""""""""""""""
" vim-airline 
""""""""""""""""""""""""""""""""""
function! AccentDemo()
  let keys = ['J','E','S','U','S']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('J', 'red')
  call airline#parts#define_accent('E', 'purple')
  call airline#parts#define_accent('S', 'blue')
  call airline#parts#define_accent('U', 'red')
  call airline#parts#define_accent('S', 'orange')
  "call airline#parts#define_accent('f', 'purple')
  "call airline#parts#define_accent('g', 'bold')
  "call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>>>'
"let g:airline_section_y = '%{getcwd()}'
"let g:airline_section_z = '%t'
let g:airline#extensions#default#layout = [
\ [ 'a', 'b'],
\ [ 'c']
\ ]

""""""""""""""""""""""""""""""""""
" Disable arrow keys 
""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""""""""""""""""""""""""""""""""""
" Folding Option 
""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99

""""""""""""""""""""""""""""""""""
" map :e# to Ctrl-E
""""""""""""""""""""""""""""""""""
:nmap <C-e> :e#<CR>

"""""""""""""""""""""""""""""""""""""""""
" Find current word scala main sources.
" " Requires Ack plugin.
"""""""""""""""""""""""""""""""""""""""""
function! FindUsagesScala()
  :Ack --scala -w <cword>
endfunction
    
nmap <F9> :call FindUsagesScala()<CR>

"""""""""""""""""""""""""""""""""""""""""
" copy to OS clipboard
"""""""""""""""""""""""""""""""""""""""""
vmap ,c "+y
vmap ,p "*p

""""""""""""""""""""""""""""""""""
" Searches Dash for the word under your cursor in vim, using the keyword 
" operator, based on file type. E.g. for JavaScript files, I have it 
" configured to search j:term, which immediately brings up the JS doc
" for that keyword. Might need some customisation for your own keywords!
 """"""""""""""""""""""""""""""""""
function! SearchDash()
  " Some setup
  let s:browser = "/usr/bin/open"
  let s:wordUnderCursor = expand("<cword>")
 
  " Get the filetype (everything after the first ., for special cases
  " such as index.html.haml or abc.css.scss.erb)
  let s:fileType = substitute(expand("%"),"^[^.]*\.","",1)
 
  " Alternative ways of getting filetype, aborted
  " let s:fileType = expand("%:e")
  " let s:searchType = b:current_syntax.":"
 
  " Match it and set the searchType -- make sure these are the right shortcuts
  " in Dash! Sort by priority in the match list below if necessary, because
  " Tilt-enabled projects may have endings like .scss.erb. 
  if match(s:fileType, "scala") != -1
    let s:searchType = "scala:" 
  elseif match(s:fileType, "js") != -1
    let s:searchType = "js:"     " can assign this to jQuery, too
  elseif match(s:fileType, "css") != -1
    let s:searchType = "css:"
  elseif match(s:fileType, "html") != -1
    let s:searchType = "html:"
  elseif match(s:fileType, "rb") != -1
    let s:searchType = "rb:"    " can assign this to Rails, too
  elseif match(s:fileType, "php") != -1
    let s:searchType = "php:"
  elseif match(s:fileType, "py") != -1
    let s:searchType = "python:"
  else
    let s:searchType = ""
  endif
 
  " Run it
  let s:url = "dash://".s:searchType.s:wordUnderCursor
  let s:cmd ="silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
map <leader>d :call SearchDash()<CR>


"""""""""""""""""""""""""""""""""""""""""
" Persisten Undo
" This is an amazing feature. When turned on, 
" Vim will remember everything that it's done 
" from in that document, even after you close it!
"""""""""""""""""""""""""""""""""""""""""
if exists("&undodir")
  set undofile          "Persistent undo! Pure money.
  let &undodir=&directory
  set undolevels=500
  set undoreload=500
endif

"""""""""""""""""""""""""""""""""""""""""
" Markdown settings
"""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'scala']
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

"""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""a
"function! Change2LightColorScheme()
"  :colorscheme gobo
"endfunction
"nmap <F10> :call Change2LightColorScheme()<CR>
