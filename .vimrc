filetype on
filetype indent on
filetype plugin on
colorscheme molokai

"command
set hidden
set showcmd
set wildmenu
set wildmode=list,full
set complete+=k
"set complete=.,w,b,u,t,i,k
nnoremap <space>ss :source ~/.vimrc<cr>

"display
syntax on
set number
set ruler
"set list
set scrolloff=999
set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}%=\ %Y,\ %{&fileencoding},\ %l/%L]


"tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"edit
set autoindent
set cindent
set pastetoggle=,p
nnoremap <space>ww :w<cr>
nnoremap <space>wq :wq<cr>
nnoremap <space>qq :q<cr>
nnoremap <space>qa :qall<cr>
nnoremap U <c-r>

"emacs keybind
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-h> <bs>
inoremap <c-d> <del>
inoremap <c-k> <esc>d$a

cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-h> <bs>
cnoremap <c-d> <del>
cnoremap <c-k> <esc>d$a

""autocomplpop
let g:acp_enableAtStartup = 0
highlight Pmenu ctermbg = 7 ctermfg = 4
highlight PmenuSel ctermbg = 4 ctermfg = 7

""neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

"" bracket
inoremap {<Tab> {}<LEFT>
inoremap [<Tab> []<LEFT>
inoremap (<Tab> ()<LEFT>
inoremap <<Tab> <><LEFT>
inoremap "<Tab> ""<LEFT>
inoremap '<Tab> ''<LEFT>

inoremap {+ {};<LEFT><LEFT>
inoremap [+ [];<LEFT><LEFT>
inoremap (+ ();<LEFT><LEFT>
inoremap <+ <>;<LEFT><LEFT>
inoremap "+ "";<LEFT><LEFT>
inoremap '+ '';<LEFT><LEFT>

inoremap {F {}<LEFT>
inoremap [F []<LEFT>
inoremap (F ()<LEFT>
inoremap <F <><LEFT>
inoremap "F ""<LEFT>
inoremap 'F ''<LEFT>
inoremap {J {}<LEFT>
inoremap [J []<LEFT>
inoremap (J ()<LEFT>
inoremap <J <><LEFT>
inoremap "J ""<LEFT>
inoremap 'J ''<LEFT>

inoremap {<Nul> {}<LEFT>
inoremap [<Nul> []<LEFT>
inoremap (<Nul> ()<LEFT>
inoremap <<Nul> <><LEFT>
inoremap "<Nul> ""<LEFT>
inoremap '<Nul> ''<LEFT>

"encoding
nnoremap <space>me :e ++enc=euc-jp<cr>
nnoremap <space>ms :e ++enc=shift_jis<cr>
nnoremap <space>mu :e ++enc=utf-8<cr>

"complement
"autocmd FileType python inoremap pr<Tab> print ""<LEFT>
"autocmd FileType python inoremap if<Tab> if :<LEFT>
"autocmd FileType python inoremap for<Tab> for :<LEFT>
"autocmd FileType python inoremap s<Tab> self

"file move
nnoremap <c-p> :bp<cr>
nnoremap <c-n> :bn<cr>

"move
set whichwrap=b,s,h,l,<,>,[,]
set vb t_vb=
nnoremap j gj
nnoremap k gk
nnoremap J <c-d>
nnoremap K <c-u>
nnoremap <c-g> gd
nnoremap H b
nnoremap L w
nnoremap w ^
nnoremap e $

"ime
if has('multi_byte_ime')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

" search
set incsearch
set ignorecase
set smartcase
nnoremap <space>h :set hlsearch! hlsearch?<cr>

"open
autocmd BufEnter * execute ":lcd " . expand("%:p:h")
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \ exe "normal! g'\"" |
    \ endif
endif
""FuzzyFinder
nnoremap <space>ff :FufFile<cr>
nnoremap <space>fb :FufBuffer<cr>
nnoremap <space>fj :sp<cr><c-w>j:FufFile<cr>
nnoremap <space>fk :sp<cr>:FufFile<cr>
nnoremap <space>fl :vs<cr><c-w>l:FufFile<cr>
nnoremap <space>fJ :sp<cr><c-w>j:FufBuffer<cr>
nnoremap <space>fK :sp<cr>:FufBuffer<cr>
nnoremap <space>fL :vs<cr><c-w>l:FufBuffer<cr>
""Unite
let g:unite_enable_start_insert = 0
nnoremap <space>uf :Unite file file/new<cr>
nnoremap <space>ub :Unite buffer<cr>
nnoremap <space>ur :Unite file_mru<cr>
nnoremap <space>ud :Unite directory_mru file<cr>
nnoremap <space>ug :Unite grep<cr>
nnoremap <space>uj :sp<cr><c-w>j:Unite file file/new<cr>
nnoremap <space>uk :sp<cr>:Unite file file/new<cr>
nnoremap <space>ul :vs<cr><c-w>l:Unite file file/new<cr>
nnoremap <space>uJ :sp<cr><c-w>j:Unite buffer<cr>
nnoremap <space>uK :sp<cr>:Unite buffer<cr>
nnoremap <space>uL :vs<cr><c-w>l:Unite buffer<cr>
au FileType unite nnoremap <buffer> <esc><esc> :q<cr>
au FileType unite inoremap <buffer> <esc><esc> <esc>:q<cr>

"window
nnoremap <space>w1 :only<cr>
nnoremap <space>wj :sp<cr>
nnoremap <space>wk :sp<cr>
nnoremap <space>wl :vs<cr><c-w>l
""window move
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
""window size
nnoremap <space>w0 <c-w>=
nnoremap ; 5<c-w>+
nnoremap + 5<c-w>-
nnoremap @ 5<c-w>>
nnoremap ` 5<c-w><

"execute
autocmd FileType perl :nnoremap ,e :w<cr>:w !perl -cw %<cr>
autocmd FileType perl :nnoremap ,r :w<cr>:w !perl %<cr>
autocmd FileType python :nnoremap ,e :w<cr>:w !python -cw %<cr>
autocmd FileType python :nnoremap ,r :w<cr>:w !python %<cr>

"fold
set foldmethod=indent
set foldlevel=999
nnoremap <space>lf :set foldlevel=999<cr>
nnoremap <space>l0 :set foldlevel=0<cr>
nnoremap <space>l1 :set foldlevel=1<cr>
nnoremap <space>l2 :set foldlevel=2<cr>
nnoremap <space>l3 :set foldlevel=3<cr>

"twitvim
let twitvim_count=100
let twitvim_browser_cmd = "open -a Firefox"
nnoremap <space>tt :vs<cr>:FriendsTwitter<cr>:q<cr>
nnoremap <space>tl :ListTwitter r<cr>
nnoremap <space>t@ :RepliesTwitter<cr>
nnoremap <space>tp :PosttoTwitter<cr>
nnoremap <space>tu :UserTwitter 
nnoremap <space>tn :NextTwitter<cr>
nnoremap <space>td :DMTwitter<cr>
nnoremap <space>tb :BackTwitter<cr>
nnoremap <space>tr :RefreshTwitter<cr>
nnoremap <space>ts :SearchTwitter 

"dictionary
nnoremap <space>d :Ref alc<Space>

"for crontab
set backupskip=/tmp/*,/private/tmp/*

"shell
nnoremap <space>sh :VimShell<cr>
nnoremap <space>sl :vs<cr><c-w>l:VimShell<cr>
nnoremap <space>sk :sp<cr>:VimShell<cr>
nnoremap <space>sj :sp<cr><c-w>j:VimShell<cr>

"git
nnoremap <space>gs :Gstatus<cr>
nnoremap <space>gb :Gblame<cr>
nnoremap <space>gl :Glog<cr>
nnoremap <space>gd :Gdiff<cr>

nnoremap <space>gS :GitStatus<cr>
nnoremap <space>gB :GitBlame<cr>
nnoremap <space>gL :GitLog<cr>
nnoremap <space>gD :GitDiff<cr>
