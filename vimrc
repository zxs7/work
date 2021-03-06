" by qucaihui
" @date 2014-09-29
let mapleader=','

" don't bother with vi compatibility
set nocompatible

" vundle {{{
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
filetype off 
if has("unix")
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')  
endif

Bundle 'gmarik/vundle'

" Bundle 'mileszs/ack.vim'

" Bundle 'dbext.vim'

" Bundle 'kien/ctrlp.vim'
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

Bundle "tomtom/tcomment_vim"
nnoremap <leader>// :TComment<CR>
vnoremap <leader>// :TComment<CR>

Bundle 'PDV--phpDocumentor-for-Vim'
inoremap <C-D> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-D> :call PhpDocSingle()<CR> 
vnoremap <C-D> :call PhpDocRange()<CR>

" Bundle "Mark--Karkat"
" <leader>m, <leader>n

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 'f'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:airline_theme="tomorrow"
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bd :bd<cr>

let g:airline#extensions#tabline#enabled = 0

let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_max_count = 9
let g:airline#extensions#tabline#buffer_max_count = 9

" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '>'
" let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" 多光标操作
Bundle 'terryma/vim-multiple-cursors'

Bundle "tpope/vim-surround"
" cs"',ds',yss(,ysiw]

" supertab 和 youcompleteme 二者选其一 Default supertab
" Bundle 'ervandew/supertab'

" can't use brew python, macvim signal ABRT
Bundle 'Valloric/YouCompleteMe'
" YCM 补全菜单配色
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
" 从第二个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" syntax check
" Bundle 'scrooloose/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Bundle 'matrix.vim--Yang'

" Bundle 'Townk/vim-autoclose'
Bundle 'Raimondi/delimitMate'
let delimitMate_matchpairs = "(:),[:],{:}"
let b:delimitMate_balance_matchpairs = 1

Bundle 'godlygeek/tabular'
" :Tabularize /=
" :Tabularize /=\zs

" must after tabublar plugin
" Bundle 'plasticboy/vim-markdown'
" Bundle 'suan/vim-instant-markdown'

" Bundle 'shawncplus/phpcomplete.vim'

Bundle 'The-NERD-tree'
noremap <leader>d :NERDTreeToggle<CR>

Bundle 'majutsushi/tagbar'
nnoremap <leader>] :TagbarToggle<CR>
let g:tagbar_type_php  = {
\ 'ctagstype' : 'php',
\ 'kinds'     : [
    \ 'i:interfaces',
    \ 'c:classes',
    \ 'd:constant definitions',
    \ 'f:functions',
    \ 'j:javascript functions:1'
\ ]
\ }

Bundle 'altercation/vim-colors-solarized'
colorscheme solarized
set background=dark
" let g:solarized_termtrans=1
Bundle 'sickill/vim-monokai'
" colorscheme monokai
Bundle 'tomasr/molokai'
" colorscheme molokai

" Bundle 'fholgado/minibufexpl.vim'
" " 显示/隐藏 MiniBufExplorer 窗口
" map <Leader>bl :MBEToggle<cr>
" " buffer 切换快捷键
" map <Leader>bn :MBEbn<cr>
" map <Leader>bp :MBEbp<cr>

" Bundle 'tpope/vim-markdown'
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Bundle 'scrooloose/syntastic'

" Bundle 'vim-scripts/phpfolding.vim'
" let g:DisableAutoPHPFolding = 1
" map <F5> <Esc>:EnableFastPHPFolds<Cr>
" map <F6> <Esc>:EnablePHPFolds<Cr>
" map <F7> <Esc>:DisablePHPFolds<Cr>

" Bundle 'SirVer/ultisnips'
" let g:UltiSnipsExpandTrigger="<C-W>"
" let g:UltiSnipsJumpForwardTrigger="<C-F>"
" let g:UltiSnipsJumpBackwardTrigger="<C-B>"
"
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Bundle 'nathanaelkane/vim-indent-guides'
" " 随 vim 自启动
" let g:indent_guides_enable_on_vim_startup=1
" " 从第二层开始可视化显示缩进
" let g:indent_guides_start_level=2
" " 色块宽度
" let g:indent_guides_guide_size=1
" " 快捷键 i 开/关缩进可视化
" nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" js jsbeautify
" Bundle 'maksimr/vim-jsbeautify'
" " for js
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" " for html
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" }}}

filetype plugin indent on     " required!

" seneral settings
" {{{
syntax enable          " enable syntax highlighting
" set mouse-=a           " disable mouse
set nobomb             " utf8 bomb
set showcmd
set number             " show line numbers
set ruler              " show where you are
set modeline           " 启用Modeline,详见http://vim.wikia.com/wiki/Modeline_magic
set scrolloff=5        " 光标移动到buffer的顶部和底部时保持n行距离

set textwidth=100      " Linebreak
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

set nowrap             " no wrap
" set backspace=2        " 设置回格键正常处理
set backspace=indent,eol,start
set clipboard+=unnamed " Yanks go on clipboard instead.
set directory-=.       " don't store swapfiles in the current directory
set wildmenu           " show a navigable menu for tab completion
set wildmode=longest,list
set autochdir          " 自动修改vim当前目录为文件所在目录
set tags=tags;         " tags文件搜索

" cscope
set csto=1
set cst

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

" search
set smartcase
set hlsearch
set noincsearch

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" indent
set smartindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

" fold
set foldenable
set foldmethod=marker

" no scroll bar
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" no scratch preview
" set completeopt=longest,menu
set completeopt-=preview

" iterm2 vim performance
set lazyredraw
set ttyfast
" set synmaxcol=128
syntax sync minlines=256

" set lines=999
" set columns=9999

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm'\"")|else|exe "norm $"|endif|endif

" auto reload vimrc where editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
" }}}

" keyboard shortcuts {{{
nnoremap <silent> <leader>nn :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <silent> <leader>nl :nohlsearch<CR>

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" s: 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
" g: 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
" d: 查找本函数调用的函数
" c: 查找调用本函数的函数
" t: 查找指定的字符串
" e: 查找egrep模式，相当于egrep功能，但查找速度快多了
" f: 查找并打开文件，类似vim的find功能
" i: 查找包含本文件的文件
nmap <C-m>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-m>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-m>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-m>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-m>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-m>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-m>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-m>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" autoload cscope.out file
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>x :x<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
" inoremap <C-w> <Esc>db

nnoremap <leader>u bguwe
nnoremap <leader>U bgUwe

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" inoremap <C-h> <Nop>

" complete enter mapping

" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" }}}

" 解决gbk时消息乱码问题
if has("gui_running")
    set mouse=a
    set langmenu=zh_cn.utf-8
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_cn.utf-8
    set gfn=Monaco:h12
endif

" vim600: sw=4 ts=4 fdm=marker syn=vim
