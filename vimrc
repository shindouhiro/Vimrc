" 
"定义快捷键的前缀，即<Leader>
let mapleader=";"

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>wq :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'tristen/vim-sparkup'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'
Plugin 'tomtom/tcomment_vim'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
" 插件列表结束
call vundle#end()
filetype plugin indent on

" 配色方案
set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme phd


" 禁止光标闪烁
set gcr=a:block-blinkon0
" " 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" " 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T


" 总是显示状态栏
set laststatus=2
" " 显示光标当前位置
set ruler
" " 开启行号显示
set number
" " 高亮显示当前行/列
set cursorline
set cursorcolumn
" " 高亮显示搜索结果
set hlsearch

"开启语法高亮功能
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on


" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=2
" " 设置格式化时制表符占用空格数
set shiftwidth=2
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" ctrlp
let g:ctrlp_map = ',,' 
" NERDTree
nmap <F2> :NERDTree  <CR> 
" 注释
map <c-c> gcc
" 快速移动
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 禁止折行
set nowrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
" let g:user_emmet_leader_key='<C-Z>'
" 设置Complete
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
 let g:ycm_key_list_select_completion = ['<Down>']
" esc 映射jj
imap jj <esc>
imap <Tab> <C-P>
