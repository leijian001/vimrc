"去掉与VI的一致性
set nocompatible

let mapleader = ";"
"文件类型判断
filetype off

" vundle {
set rtp+=~/.vim/bundle/vundle/
" 如果在windows下使用的话，设置为
" set rtp+=$HOME/.vim/bundle/vundle/
" let Vundle manage Vundle
" required!
call vundle#rc()
" }

Bundle 'gmarik/vundle'
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-rails.git'

Bundle 'Valloric/YouCompleteMe.git'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Enter>']
let g:ycm_key_invoke_completion = '<C-D>'
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

Bundle 'Valloric/ListToggle'

Bundle 'scrooloose/syntastic'

Bundle 'mbbill/code_complete'

Bundle 'nathanaelkane/vim-indent-guides.git'
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'ShowTrailingWhitespace'

Bundle 'Tagbar'
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30

Bundle 'FencView.vim'
Bundle 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_blockHeader="---------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="雷健"
"let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with <enter>"

" Bundle 'taglist.vim'
" Bundle 'SuperTab'
" Bundle 'bufexplorer.zip'
Bundle 'matrix.vim--Yang'

" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'

colorscheme default

"启用对应文件类型的插件
filetype plugin indent on

"打开语法高亮
syntax enable
"允许按指定主题进行语法高亮，而非默认高亮主题
syntax on

"显示一个完整的命令已经完成的部分
set showcmd
"右下角显示光标位置的状态行
set ruler

"显示行号
set nu

"自动缩进
set ai
"C语言风格缩进
set cindent

set tabstop=4 		"设定tab宽度为4个字符
set softtabstop=4
set shiftwidth=4 	"设定自动缩进为4个字符
set expandtab 		"用space替代tab的输入
"set noexpandtab 	"不用space替代tab的输入

"自动运行
autocmd BufNewFile,BufRead *.c,*.h,*.cpp call tagbar#autoopen()
autocmd BufNewFile,BufRead *.c,*.h,*cpp :setlocal colorcolumn=81
autocmd BufNewFile,BufRead *.c,*.h,*cpp :IndentGuidesToggle

hi ColorColumn guibg=lightgrey ctermbg=lightgrey

set backspace=indent,start,eol

"如果存在鼠标,则启用
if has('mouse')
	set mouse=a
endif

"选择代码折叠类型
set foldmethod=syntax
"启动 vim 时不要自动折叠代码
set foldlevel=100

set cursorline

set tags+=~/.vim/std_tags

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F9> :!make run<CR>
map <C-B> :make<CR>

imap jj <ESC>
