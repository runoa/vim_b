
filetype on
filetype indent on
filetype plugin on

"command
set hidden
set showcmd
set wildmenu
set wildmode=list,full
set complete+=k
"set complete=.,w,b,u,t,i,k

"display
syntax on
set number
set ruler
set list
set scrolloff=999

"tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"edit
set autoindent
set cindent
set pastetoggle=,p
nnoremap U <C-r>
inoremap <C-f> <ESC>:set iminsert=0<CR>

"" bracket
"inoremap {<Space> {}<LEFT>
"inoremap [<Space> []<LEFT>
"inoremap (<Space> ()<LEFT>
"inoremap <<Space> <><LEFT>
"inoremap "<Space> ""<LEFT>
"inoremap '<Space> ''<LEFT>

"complement
"autocmd FileType python inoremap pr<Tab> print ""<LEFT>
"autocmd FileType python inoremap if<Tab> if :<LEFT>
"autocmd FileType python inoremap for<Tab> for :<LEFT>
"autocmd FileType python inoremap s<Tab> self

"move
set whichwrap=b,s,h,l,<,>,[,]
set vb t_vb=
nnoremap j gj
nnoremap k gk
nnoremap J <C-d>
nnoremap K <C-u>
nnoremap <C-g> gd
nnoremap H b
nnoremap L w
nnoremap w ^
nnoremap W $

"ime
if has('multi_byte_ime')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

" search
set incsearch
set ignorecase
set smartcase
nnoremap ,h :set hlsearch! hlsearch?<CR>

"open
autocmd BufEnter * execute ":lcd " . expand("%:p:h")
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif

""FuzzyFinder
nnoremap ,of :FufFile<CR>
nnoremap ,ob :FufBuffer<CR>

"window
nnoremap ,w0 :q<CR>
nnoremap ,w1 :only<CR>
nnoremap ,wj :sp<CR><C-w>j:FufFile<CR>
nnoremap ,wl :vs<CR><C-w>l:FufFile<CR>
""window move
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
""window size
nnoremap ,ww <C-w>=
nnoremap <UP> 5<C-w>+
inoremap <UP> <ESC>5<C-w>+i
nnoremap <LEFT> 5<C-w><
inoremap <LEFT> <ESC>5<C-w><i
nnoremap <DOWN> 5<C-w>-
inoremap <DOWN> <ESC>5<C-w>-i
nnoremap <RIGHT> 5<C-w>>
inoremap <RIGHT> <ESC>5<C-w>>i

"execute
autocmd FileType perl :nnoremap ,e :w<CR>:w !perl -cw %<CR>
autocmd FileType perl :nnoremap ,r :w<CR>:w !perl %<CR>
autocmd FileType python :nnoremap ,e :w<CR>:w !python -cw %<CR>
autocmd FileType python :nnoremap ,r :w<CR>:w !python %<CR>

"fold
set foldmethod=indent
set foldlevel=999
nnoremap ,ff :set foldlevel=999<CR>
nnoremap ,f0 :set foldlevel=0<CR>
nnoremap ,f1 :set foldlevel=1<CR>
nnoremap ,f2 :set foldlevel=2<CR>
nnoremap ,f3 :set foldlevel=3<CR>

"twitvim
let twitvim_count=100
let twitvim_browser_cmd = "open -a Firefox"
nnoremap ,tt :vs<CR>:FriendsTwitter<CR>:q<CR>
nnoremap ,tl :ListTwitter r<CR>
nnoremap ,tr :RepliesTwitter<CR>
nnoremap ,tp :PosttoTwitter<CR>
nnoremap ,tu :UserTwitter<CR><C-w>j
nnoremap ,tn :NextTwitter<CR>
nnoremap ,td :DMTwitter<CR>
nnoremap ,tb :BackTwitter<CR>
nnoremap ,tf :RefreshTwitter<CR>

"dictionary
nnoremap ,d :Ref alc<Space>

