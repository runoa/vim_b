
"neobundle
set nocompatible
filetype off
if has('vim_starting')
    set runtimepath+=$HOME/.vim/neobundle.vim.git
    call neobundle#rc(expand('~/.bundle'))
endif

""neobundle 'git://github.com/'
NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-scripts/L9.git'
NeoBundle 'vim-scripts/TwitVim.git'
NeoBundle 'vim-scripts/AutoComplPop.git'
NeoBundle 'vim-scripts/FuzzyFinder.git'
NeoBundle 'basyura/TweetVim.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'thinca/vim-showtime'
NeoBundle 'motemen/git-vim.git'
NeoBundle 'deris/columnjump.git'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'kana/vim-smartword.git'
NeoBundle 't9md/vim-quickhl.git'

"settings
filetype on
filetype plugin on
filetype indent on
colorscheme molokai

"command
set hidden
set showcmd
set wildmenu
set wildmode=list,full
nnoremap <space>ss :source ~/.vimrc<cr>

"display
syntax on
set number
set ruler
set list
set listchars=tab:^\ ,trail:$
set scrolloff=10
set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}%=\ %Y,\ %{&fileencoding},\ %l/%L]

"color
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=4
highlight CursorColumn ctermbg=4
highlight Cursor ctermbg=4
highlight Visual ctermfg=0 ctermbg=2
au BufRead,BufNewFile *.memo set syntax=hybrid
au BufRead,BufNewFile *.txt set syntax=hybrid

""zenkaku space
function! ZenkakuSpace()
    highlight ZenkakuSpace ctermbg=5
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" search
set incsearch
set ignorecase
set smartcase
nnoremap <space>h :set hlsearch! hlsearch?<cr>

""highlight
nmap <space>mm <plug>(quickhl-toggle)
xmap <space>mm <plug>(quickhl-toggle)
nmap <space>M <plug>(quickhl-reset)
xmap <space>M <plug>(quickhl-reset)
nmap <space>mj <plug>(quickhl-match)
nmap <space>ma :QuickhlAdd 

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

""save
inoremap <c-s> <esc>:w<cr>
inoremap <c-w> <esc>:w<cr>
nnoremap <c-s> :w<cr>
nnoremap <c-w> :w<cr>

""emacs keybind
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-h> <bs>
inoremap <c-k> <esc>d$a

cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-d> <del>
cnoremap <c-h> <bs>
cnoremap <c-k> <esc>d$a

""auto complete
set complete+=k
"set complete=.,w,b,u,t,i,k
highlight Pmenu ctermbg = 7 ctermfg = 4
highlight PmenuSel ctermbg = 4 ctermfg = 7

""autocomplpop
nnoremap <space>n :NeoComplCacheDisable<cr>:AutoComplPopEnable<cr>
let g:acp_enableAtStartup = 1

""neocomplcache
let g:neocomplcache_enable_at_startup = 0
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
nnoremap <space>N :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>

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

""columnjump
map <c-k> <Plug>(columnjump-backward)
map <c-j> <Plug>(columnjump-forward)

""easymotion
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="@"
let g:EasyMotion_grouping=1

""smartword
nnoremap ,w <Plug>(smartword-w) 
nnoremap ,b <Plug>(smartword-b) 
nnoremap ,e <Plug>(smartword-e) 
nnoremap ,g <Plug>(smartword-ge)

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
nnoremap <space>fh :vs<cr>:FufFile<cr>
nnoremap <space>fJ :sp<cr><c-w>j:FufBuffer<cr>
nnoremap <space>fK :sp<cr>:FufBuffer<cr>
nnoremap <space>fL :vs<cr><c-w>l:FufBuffer<cr>
nnoremap <space>fH :vs<cr>:FufBuffer<cr>

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
nnoremap <space>uh :vs<cr>:Unite file file/new<cr>
nnoremap <space>uJ :sp<cr><c-w>j:Unite buffer<cr>
nnoremap <space>uK :sp<cr>:Unite buffer<cr>
nnoremap <space>uL :vs<cr><c-w>l:Unite buffer<cr>
nnoremap <space>uH :vs<cr>:Unite buffer<cr>
au FileType unite nnoremap <buffer> <esc><esc> :q<cr>
au FileType unite inoremap <buffer> <esc><esc> <esc>:q<cr>

""vimfiler
nnoremap <space>v :VimFilerBufferDir<cr>
nnoremap <space>V :VimFiler<cr>
let g:vimfiler_safe_mode_by_default = 0

""ack
nnoremap <space>a :Ack 

"window
nnoremap <space>w1 :only<cr>
nnoremap <space>wk :sp<cr>
nnoremap <space>wh :vs<cr>
nnoremap <space>wl :vs<cr><c-w>l
nnoremap <space>wj :sp<cr><c-w>j

""window move
nnoremap <c-h> <c-w>h:NeoComplCacheDisable<cr>:AutoComplPopEnable<cr>
nnoremap <c-l> <c-w>l:NeoComplCacheDisable<cr>:AutoComplPopEnable<cr>
nnoremap W <c-w>

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
call unite#custom_default_action('vimshell/history', 'insert')
nnoremap <space>sh :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>:VimShell<cr>
nnoremap <space>sl :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>:vs<cr><c-w>l:VimShell<cr>
nnoremap <space>sk :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>:sp<cr>:VimShell<cr>
nnoremap <space>sj :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>:sp<cr><c-w>j:VimShell<cr>

"git
nnoremap <space>G :Git 
nnoremap <space>gg :Git 
nnoremap <space>ga :Gwrite<cr>
nnoremap <space>gc :Gcommit -v<cr>
nnoremap <space>gC :Gwrite<cr>:Gcommit -v<cr>
nnoremap <space>gs :Gstatus<cr>
nnoremap <space>gb :Gblame<cr>
nnoremap <space>gl :Git log<cr>
nnoremap <space>gd :GitDiff<cr>
nnoremap <space>ge :Gedit 
nnoremap <space>gS :GitStatus<cr>
nnoremap <space>gB :GitBlame<cr>

