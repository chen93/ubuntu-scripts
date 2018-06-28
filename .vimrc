set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" YCM
Plugin 'minibufexplorerpp'
Plugin 'winmanager'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
" Put your non-Plugin stuff after this line
let mapleader = ","

" 自动补全配置
"set completeopt=longest,menu            "让vim补全菜单和行为一致
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式自动关闭预览窗口
"inoremap <expr> <CR>        pumvisible() ? "\<C-y>" : "\<CR>"   "回车即选中当前项
"inoremap <expr> <Down>      pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>        pumvisible() ? "\<C-p>" : "\<Up>"
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0  "do not show error/warning
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Settings for tagslist
let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设置
let Tlist_Ctags_Cmd ='/usr/bin/ctags' "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个
nnoremap <leader>t :TlistToggle<CR> "热键设置，我设置成Leader+t来呼出和关闭Taglist
" window manage
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0  
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  
  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
  
function! NERDTree_IsValid()  
    return 1  
endfunction  
  
nmap wm :WMToggle<CR>  

"=========old configure=========
"set wildmenu"按TAB键时命令行自动补齐"
"set ignorecase"忽略大小写"
"set number "显示行号"
"set visualbell"禁止响铃"
"set ruler"显示当前光标位置"
"set autoread"文件在Vim之外修改过，自动重新读入"
"set autowrite"设置自动保存内容"
"set autochdir"当前目录随着被编辑文件的改变而改变"
set nocp "使用vim而非vi"
set mouse=a"开启鼠标支持"
"set hlsearch"open hign light search"
"map 9 $"通过9跳转到行末尾,0默认跳转到行首"
"map <silent>  <C-A>  gg v G "Ctrl-A 选中所有内容"
"filetype on "启动文件类型检查"
"filetype plugin on "运行vim加载文件类型插件"
"colorscheme desert

set tags=tags;
set autochdir

set clipboard=unnamed
set nocompatible
set backspace=indent,eol,start
set fileencodings=utf-8,gbk
"colorscheme desert
colorscheme slate
"colorscheme evening
set number
syntax on
filetype plugin indent on
set autoindent
set smartindent
set showmatch
set cindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s.=1s:1s
set guifont=LiberationMono\ 12
set ruler
set ignorecase
set incsearch
set linespace=1
set foldenable
set foldmethod=marker
set foldcolumn=0
set hlsearch
set listchars=tab:>-,trail:-
"set listchars=tab:>-
"set list

" highlight curse and line
"set cursorcolumn
set cursorline
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

"let curse back between () {} [] etc.
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""GNU gcc standard coding style
"setlocal cindent
"setlocal cinoptions=>4,n-2,{2,^-2.:2,=2,g0.h2,p5,t0.+2,(0,u2,w1,m1
setlocal shiftwidth=4
setlocal softtabstop=4
"setlocal textwidth=79
"setlocal fo-=ro fo+=cql
setlocal expandtab

hi LineNr guifg=grey50
hi NonText guifg=LightBlue guibg=NONE


