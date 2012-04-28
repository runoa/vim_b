
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
set whichwrap=b,s,h,l,<,>,[,]
set vb t_vb=
inoremap <C-J> <ESC>:set iminsert=0<CR>
nnoremap U <C-r>

"ime
let IM_CtrlIBusPython = 1
if has('multi_byte_ime')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

"" brackets
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>

" search
set incsearch
set ignorecase
set smartcase
map n nzz
map N Nzz
nnoremap <C-h> :set hlsearch! hlsearch?<CR>

"open
autocmd BufEnter * execute ":lcd " . expand("%:p:h")
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif

"window
nnoremap ,w0 :q<CR>
nnoremap ,w1 :only<CR>
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
nnoremap ,wj :sp<CR> <C-w>j
nnoremap ,wl :vs<CR> <C-w>l

"compile
autocmd FileType perl :map <C-E> :w !perl -cw %<CR>
autocmd FileType perl :map <C-R> :w !perl %<CR>

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
nnoremap ,tt :vs<CR>:<C-u>FriendsTwitter<CR>:q<CR>
nnoremap ,tr :<C-u>RepliesTwitter<CR>
nnoremap ,tp :<C-u>PosttoTwitter<CR>
nnoremap ,tu :<C-u>UserTwitter<CR><C-w>j
nnoremap ,tn :<C-u>NextTwitter<CR>
nnoremap ,td :<C-u>DMTwitter<CR>
nnoremap ,tb :<C-u>BackTwitter<CR>
nnoremap ,tf :<C-u>RefreshTwitter<CR>

