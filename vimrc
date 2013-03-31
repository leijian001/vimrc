"文件类型判断
filetype on
"启用对应文件类型的插件
filetype plugin on

"打开语法高亮
syntax enable 
"允许按指定主题进行语法高亮，而非默认高亮主题
syntax on
"指定配色方案
"colorscheme evening


"显示一个完整的命令已经完成的部分
set showcmd
"右下角显示光标位置的状态行
set ruler

set nocp
"显示行号
set nu

"自动缩进
set ai
"C语言风格缩进
set cin

set ts=4
set sw=4

"去掉与VI的一致性
set nocompatible

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

"set for TagList
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type = 'name'
let Tlist_WinWidth = 15
let Tlist_Use_Right_Window = 1

"setting for omnicppcomplete
set completeopt=longest,menu
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_SelectFirstItem = 2
"show function prototype  in popup window
let OmniCpp_ShowPrototypeInAbbr = 1 

set tags+=/root/.vim/std_tags

"set for A.vim
"nnoremap <silent> <F12> :A<CR>

"set for SupperTAB
"let g:SuperTabRetainCompletionType=2
"imap <C-F> <C-X><C-O>
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"set for neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:NeoComplCache_DisableAutoComplete = 0
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_enable_auto_select = 1

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-B> :make<CR>
