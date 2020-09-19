" 按键映射
" buffer 切换
nmap zl :bn<cr>
nmap zh :bp<cr>
nmap <tab> <c-w><c-w>
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
nnoremap ,q :wq<CR>
nnoremap ,z :Bd<CR>


" insert 模式下 光标移动
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
imap <m-l> <Esc>A
imap <m-h> <Esc>I

" 按键映射
inoremap jj <Esc>

" 上下移动当前行
nnoremap <C-k>  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-j>  :<c-u>execute 'move +'. v:count1<cr>

" 在当前行前/后快速插入空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" 如果你选中了一行或多行，那么你可以用 < 或 > 来调整他们的缩进。但在调整之后就不会保持选中状态了。
" 你可以连续按下 g v 来重新选中他们，请参考 :h gv。因此，你可以这样来配置映射
xnoremap <  <gv
xnoremap >  >gv


"------



set nocompatible " 不与 Vi 兼容（采用 Vim 自己的操作命令）
syntax on " 打开语法高亮。自动识别代码，使用多种颜色显示。
" set showmode " 在底部显示，当前处于命令模式还是插入模式。
" set showcmd " 命令模式下，在底部显示，当前键入的指令
" set mouse=a " 支持使用鼠标

'设置编码'
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8 " 使用 utf-8 编码


set t_Co=256 " 启用256色

filetype indent on " 开启文件类型检查，并且载入与该类型对应的缩进规则

set autoindent " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致

set tabstop=4 " 按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4    "在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数

set expandtab " 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set softtabstop=4 " Tab 转为多少个空格

" set listchars=tab:>-,trail:- " Vim编辑器中默认不显示文件中的tab和空格符，通过上面的配置可以获得以下的显示效果，方便定位输入错误。

set number " 显示行号
set relativenumber " 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set cursorline  " 光标所在的当前行高亮
" set cursorcolumn "突出显示当前列

set textwidth=80 " 设置行宽，即一行显示多少个字符


set wrap  " 自动折行，即太长的行分成几行显示
"set nowrap " 关闭自动换行
set wrapmargin=2 " 指定折行处与编辑窗口的右边缘之间空出的字符数


set scrolloff=5 "  平滚动时，光标距离行首或行尾的位置,该配置在不折行时比较有用

set laststatus=2 " 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
" set  ruler " 在状态栏显示光标的当前位置（位于哪一行哪一列）。
" set showmatch " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
" set hlsearch " 搜索时，高亮显示匹配结果

set spell spelllang=en_us " 打开英语单词的拼写检查
" set nobackup " 不创建交换文件


set undofile " 保留撤销历史
set history=1000 " Vim 需要记住多少次历史操作

set autoread " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。

set wildmenu
set wildmode=longest:list,full " 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。



"---------------------------------------------------
call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugin for demonstration purpose

Plug 'sainnhe/gruvbox-material'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'altercation/vim-colors-solarized' " set background=dark set t_Co=256 colorscheme solarized



Plug 'whatyouhide/vim-gotham'  " colorscheme gotham
Plug 'chriskempson/base16-vim' " colorscheme base16-oceanicnext

" 简化符号; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" File Tree
Plug 'preservim/nerdtree'

" Status line 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 
Plug 'Valloric/YouCompleteMe'


Plug 'Yggdroot/LeaderF'


Plug 'jiangmiao/auto-pairs' "括号
Plug 'preservim/nerdcommenter'

" 函数提示
Plug 'Shougo/echodoc.vim'

" C++ 语法
Plug 'octol/vim-cpp-enhanced-highlight'

" 文本对象
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

" 代码检查
Plugin 'w0rp/ale'


call plug#end()
"-------------------------------------------
" 主题

"colorscheme base16-oceanicnext

set background=dark
set t_Co=256
colorscheme  molokai


set laststatus=2    " 始终显示状态栏

" Airline
let g:airline#extensions#tabline#enabled=1    " 开启 tab 栏
"let g:airline_theme='simple' "设置主题
"nmap <tab> :bn<cr> "设置tab键映射"


" NERDTree 相关
map <C-n> :NERDTreeToggle<CR> " CTRL+N 打开文件树
autocmd vimenter * NERDTree  " 自动开启 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" map <F3> :NERDTreeMirror<CR>
" map <F3> :NERDTreeToggle<CR> 打开和关闭



" YouCompleteMe
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }


" 注释插件
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1