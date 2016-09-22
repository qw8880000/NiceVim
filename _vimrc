"
"           __   _,--="=--,_   __
"          /  \."    .-.    "./  \
"         /  ,/  _   : :   _  \/` \
"         \  `| /o\  :_:  /o\ |\__/
"          `-'| :="~` _ `~"=: |
"             \`     (_)     `/
"      .-"-.   \      |      /   .-"-.
" .---{     }--|  /,.-'-.,\  |--{     }---.
"  )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (
" (        0 Error(s) 0 Warning(s)        )
"  )       Jinle Wang@Starnet            (
" '---------------------------------------'            

" -----------------------------------------------------------------------------
"  < �жϲ���ϵͳ�Ƿ��� Windows ���� Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif


set nocompatible                                      "���� Vi ����ģʽ


" -----------------------------------------------------------------------------
"  < Vundle ��������������� >
" -----------------------------------------------------------------------------
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off

if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
endif


Bundle 'gmarik/vundle'

" ========================
" ������
" ========================
Bundle 'junegunn/vim-easy-align'
" Bundle 'Align'
Bundle 'godlygeek/tabular'

" ========================
" ��ȫ���
" ========================
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'vim-javacompleteex'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'OmniCppComplete'


" ========================
" IDE
" ========================
Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'wesleyche/SrcExpl'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'ZoomWin'
Bundle 'qw8880000/ccvext'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/syntastic'

Bundle 'EasyGrep'
if g:islinux
    Bundle 'mileszs/ack.vim'
    " Bundle 'rking/ag.vim'
    Bundle 'dyng/ctrlsf.vim'
endif
"Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
Bundle 'Mark--Karkat'
Bundle 'kshenoy/vim-signature'
Bundle 'repeat.vim'
" Bundle 'jlanzarotta/colorSchemeExplorer'

Bundle 'easymotion/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'

" ========================
" html / css /javascript
" ========================
Bundle 'mattn/emmet-vim'
" Bundle 'hallettj/jslint.vim'
" Bundle 'joestelmach/lint.vim'
Bundle 'maksimr/vim-jsbeautify'

" ========================
" c / c++
" ========================
Bundle 'qw8880000/DoxygenToolkit'
" Bundle 'cSyntaxAfter'
Bundle 'justinmk/vim-syntax-extra'
" Bundle 'octol/vim-cpp-enhanced-highlight'
" Bundle 'std_c.zip'
Bundle 'qw8880000/cvim'
Bundle 'cpp.vim'
Bundle 'scrooloose/nerdcommenter'

" ========================
" txt / markdown / wiki
" ========================
Bundle 'TxtBrowser'
Bundle 'plasticboy/vim-markdown'
" Bundle 'xolox/vim-notes'
" Bundle 'xolox/vim-misc'
" Bundle 'vimwiki/vimwiki'
"
" ========================
" draw ascii map
" ========================
Bundle 'sketch.vim'
Bundle 'DrawIt'
Bundle 'qw8880000/vim_ascii_art'


" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

" ----------------------------------------------
" vim-easy-align
" ----------------------------------------------
" ���ٶ�����
""" command mode
" :EasyAlign[!] [N-th] DELIMITER_KEY [OPTIONS]
" :EasyAlign[!] [N-th] /REGEXP/ [OPTIONS]
""" interactive mode
" vipga
" gaip
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" <enter> ����ѭ���л����ҡ��ж��뷽ʽ
" ʹ��* �ŵĻ��������һ���Ҷ���һ�Σ���������

" ----------------------------------------------
" Align
" ----------------------------------------------
" ������

" ----------------------------------------------
" godlygeek/tabular
" ----------------------------------------------
" �ı�������,���ܲ��Ǻ�ǿ�󣬵���vim-markdown������õ�

" ----------------------------------------------
" Valloric/YouCompleteMe
" ----------------------------------------------
"set completeopt=longest,menu    "��Vim�Ĳ�ȫ�˵���Ϊ��һ��IDEһ��(�ο�VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "�뿪����ģʽ���Զ��ر�Ԥ������
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "�س���ѡ�е�ǰ��
""�������Ҽ�����Ϊ ����ʾ������Ϣ
""inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
""inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
""inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"" inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
"" ��ת�����崦
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
""force recomile with syntastic
"nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>  
"nnoremap <leader>lo :lopen<CR>  "open locationlist
"nnoremap <leader>lc :lclose<CR> "close locationlist
"" inoremap <leader><leader> <C-x><C-o>
"
"let g:ycm_global_ycm_extra_conf = '~/gVimPortable/vimfiles/bundle/YouCompleteMe/third_party/ycmd/cpp/me/.ycm_extra_conf.py'
"
"" ����ʾ����vimʱ���ycm_extra_conf�ļ�����Ϣ  
"" let g:ycm_confirm_extra_conf=0
"" ��������tag�Ĳ�ȫ����������֮��������Ҫ�ı�ǩ·��  
"" let g:ycm_collect_identifiers_from_tags_files=1
""ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
"" let g:ycm_collect_identifiers_from_comments_and_strings = 0
"" �����2���ַ���ʼ��ȫ
"let g:ycm_min_num_of_chars_for_completion=2
"" ��ֹ����ƥ����,ÿ�ζ���������ƥ����
"" let g:ycm_cache_omnifunc=0
"" �������岹ȫ
"let g:ycm_seed_identifiers_with_syntax=1  
""��ע��������Ҳ�ܲ�ȫ
"let g:ycm_complete_in_comments = 1
""���ַ���������Ҳ�ܲ�ȫ
"let g:ycm_complete_in_strings = 1
"" ���������漸�ָ�ʽ���ļ�������ycm
"let g:ycm_filetype_blacklist = {
"            \ 'tagbar' : 1,
"            \ 'nerdtree' : 1,
"            \}
""youcompleteme  Ĭ��tab  s-tab �� ultisnips ��ͻ
"" let g:ycm_key_list_select_completion = ['<Down>']
"" let g:ycm_key_list_previous_completion = ['<Up>']
"" �޸Ķ�C�����Ĳ�ȫ��ݼ���Ĭ����CTRL + space���޸�ΪALT + ;
"" let g:ycm_key_invoke_completion = '<M-;>'
""
"let g:ycm_error_symbol = '!!'
"let g:ycm_warning_symbol = '>>'
"
" ----------------------------------------------
" vim-javacompleteex
" ----------------------------------------------
" java ��ȫ���

" ----------------------------------------------
" Shougo/neocomplcache.vim
" ----------------------------------------------
" �ؼ��ֲ�ȫ���ļ�·����ȫ��tag��ȫ�ȵȣ����֣��ǳ����ã��ٶȳ��졣
let g:neocomplcache_enable_at_startup = 1     "vim ����ʱ���ò��
" let g:neocomplcache_disable_auto_complete = 1 "���Զ�������ȫ�б�
" �ڵ�����ȫ�б����� <c-p> �� <c-n> ��������ѡ��Ч���ȽϺ�

" ----------------------------------------------
" msanders/snipmate.vim
" ----------------------------------------------
" ���벹ȫ

" ----------------------------------------------
" OmniCppComplete
" ----------------------------------------------
" ����C/C++���벹ȫ�����ֲ�ȫ��Ҫ��������ռ䡢�ࡢ�ṹ����ͬ��Ƚ��в�ȫ����ϸ
" ˵�����Բο�����������̵̳�
" ʹ��ǰ��ִ������ ctags ����������п���ֱ��ʹ�� ccvext �����ִ���������
" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
" ��ʹ������Ĳ������ɱ�ǩ�󣬶Ժ���ʹ����תʱ����ֶ��ѡ��
" �����Ҿͽ�--c++-kinds=+p������ȥ���ˣ����������ʲô�����������ϣ����Ҫ����ѽ
" ��Ҫ����c++
" let OmniCpp_GlobalScopeSearch = 1


" ----------------------------------------------
" bufexplorer.zip
" ----------------------------------------------
" �������ɵ��ڻ������л����൱����һ�ֶ���ļ�����л���ʽ��
" <Leader>be �ڵ�ǰ������ʾ�����б�����ѡ���ļ�
" <Leader>bs ˮƽ�ָ����ʾ�����б������ڻ����б������д�ѡ���ļ�
" <Leader>bv ��ֱ�ָ����ʾ�����б������ڻ����б������д�ѡ���ļ�


" ----------------------------------------------
" scrooloose/nerdtree
" ----------------------------------------------
" ��Ŀ¼��ṹ���ļ�������
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeDirArrows=0 			"let NERDTreeHighlightCursorline=1
" ����ģʽ������ F2 ���ò��
nmap <F2> :NERDTreeToggle<CR> 		
nmap <F3> :NERDTree .<CR>


" ----------------------------------------------
" wesleyche/SrcExpl
" ----------------------------------------------
" ��ǿԴ����������书�ܾ���Windows�е�"Source Insight"
" nmap <F7> :SrcExplToggle<CR>                "��/���������

" ----------------------------------------------
" taglist.vim
" ----------------------------------------------
" �г���ǰ�ļ��е����к�,ȫ�ֱ���, ��������
" ����ģʽ������ tl ���ò��������д� Tagbar �������Ƚ���ر�
nmap tl :TagbarClose<CR>:Tlist<CR>
let Tlist_Show_One_File=1                   "ֻ��ʾ��ǰ�ļ���tags
" let Tlist_Enable_Fold_Column=0              "ʹtaglist�������ʾ��ߵ��۵���
let Tlist_Exit_OnlyWindow=1                 "���Taglist���������һ���������˳�Vim
let Tlist_File_Fold_Auto_Close=1            "�Զ��۵�
let Tlist_WinWidth=30                       "���ô��ڿ���
let Tlist_Use_Right_Window=1                "���Ҳര������ʾ


" ----------------------------------------------
" majutsushi/tagbar
" ----------------------------------------------
" �г���ǰ�ļ��е����к�,ȫ�ֱ���, ��������
" ����ģʽ������ tb ���ò��������д� TagList �������Ƚ���ر�
nmap tb :TlistClose<CR>:TagbarToggle<CR>
let g:tagbar_width=30                       "���ô��ڿ���
" let g:tagbar_left=1                         "����ര������ʾ

" ----------------------------------------------
" ZoomWin
" ----------------------------------------------
" ���ڷָ�ڵ�����뻹ԭ
" ����ģʽ�°���ݼ� <c-w>o ������뻹ԭ���л�

" ----------------------------------------------
" qw8880000/ccvext
" ----------------------------------------------
" ���ڶ�ָ���ļ��Զ�����tags��cscope�ļ�������
" �����Windowsϵͳ, �����ɵ��ļ���Դ�ļ������̷���Ŀ¼��.symbsĿ¼��(��: X:\.symbs\)
" �����Linuxϵͳ, �����ɵ��ļ���~/.symbs/Ŀ¼��
" �����÷��ɲο�www.vim.org�д˲����˵��
" <Leader>sy �Զ�����tags��cscope�ļ�������
" <Leader>sc �����Ѵ��ڵ�tags��cscope�ļ�


" ----------------------------------------------
" ctrlpvim/ctrlp.vim
" ----------------------------------------------
" һ��ȫ·��ģ���ļ�����������������ʹ�ã�... �����������ϸ������ :h ctrlp
" ����ģʽ�����룺Ctrl + p ���ò��
nmap cpd :CtrlPDir<CR>  
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'ra'
"�����ʹ��'@cd path/'���ı�CtrlP�Ĺ���Ŀ¼Ϊpath/��ʹ��'@cd %:h'���ı�Ϊ��ǰ�ļ���Ŀ¼��
" �������CtrlPɨ�������ļ���Ŀ¼�����ø�ѡ��Ϊ1: 
let g:ctrlp_show_hidden = 0

" ----------------------------------------------
" Lokaltog/vim-powerline
" ----------------------------------------------
" ״̬����������õ�״̬��Ч��

" ----------------------------------------------
" Yggdroot/indentLine
" ----------------------------------------------
" ������ʾ������
" ���ն��ϻ�����Ļˢ�µ����⣬��������ܽ���и�����
" ����/�رն�����
"nmap <leader>il :IndentLinesToggle<CR>
"
"" ����Gvim�Ķ�������ʽ
" let g:indentLine_char = "��"
" let g:indentLine_first_char = "��"
"
"" �����ն˶�������ɫ�������ϲ�����Խ���ע�͵�����Ĭ����ɫ
"let g:indentLine_color_term = 239

" ���� GUI ��������ɫ�������ϲ�����Խ���ע�͵�����Ĭ����ɫ
" let g:indentLine_color_gui = '#A4E57E'

" ----------------------------------------------
" scrooloose/syntastic
" ----------------------------------------------
" ���ڱ����ļ�ʱ����﷨

" ----------------------------------------------
" hallettj/jslint.vim
" ----------------------------------------------
" javascript �﷨���

" ----------------------------------------------
" joestelmach/lint.vim
" ----------------------------------------------
"javascript �﷨���

" ----------------------------------------------
" mattn/emmet-vim
" ----------------------------------------------
" HTML/CSS������ٱ�д��������ϸ������ :h emmet.txt
" Enable just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html set foldenable                                        "�����۵�


" ----------------------------------------------
" cSyntaxAfter
" ----------------------------------------------
" �����������������
" au! BufRead,BufNewFile,BufEnter *.{c,cpp,h,java,javascript} call CSyntaxAfter()

" ----------------------------------------------
" justinmk/vim-syntax-extra
" ----------------------------------------------
" C ������ɫ�����

" ----------------------------------------------
" octol/vim-cpp-enhanced-highlight
" ----------------------------------------------
" C++ ������ɫ�����

" ----------------------------------------------
" std_c.zip
" ----------------------------------------------
" ������ǿC�﷨����,���ǲ�֧��#if 0ʶ��

" ���� // ע�ӷ��
" let c_cpp_comments = 0

" ----------------------------------------------
" qw8880000/cvim
" ----------------------------------------------
"���ٲ���C����
let g:C_MapLeader  = ';'

" let g:C_FormatDate            = '%D'
let g:C_FormatDate            = '%4Y/%m/%d'
let g:C_FormatTime            = '%H:%M'
let g:C_FormatYear            = 'year %Y'

" ----------------------------------------------
" cpp.vim
" ----------------------------------------------


" ----------------------------------------------
" TxtBrowser
" ----------------------------------------------
" ���ı������
"1) Ϊ�ı��ļ����ɱ����ǩ: ��Vim�򿪴��ı��ļ�, ִ��":Tlist"��������ɴ��ı��ļ���Ŀ¼��
"2) �﷨����:   ":colorscheme  colorname"
"3) �������
"<Leader>s: ����������(�ɶ���, Ĭ��Ϊgoogle)��������µĵ��ʻ�ѡ�е��ı�.
"<Leader>f: �������ֵ�(�ɶ���, Ĭ��Ϊgoogle.cn)�Թ���µĵ��ʻ�ѡ�е��ı����ֵ�.
"<Leader>g: �򿪹���»�ѡ�е�URL.
"<Leader>h: ��������
au BufRead,BufNewFile *.txt setlocal ft=txt
"���õ��ʲ���ʹ�õĴʵ�
let TxtBrowser_Dict_Url='http://fanyi.baidu.com/translate?aldtype=16047&query=text&keyfrom=baidu&smartresult=dict&lang=auto2zh#en/zh/text'
"������������
let Txtbrowser_Search_Engine='https://www.baidu.com/s?wd=text&rsv_spt=1&rsv_iqid=0xd7804a3f00048e72&issp=1&f=8&rsv_bp=0&rsv_idx=2&ie=utf-8&tn=baiduhome_pg&rsv_enter=1&rsv_sug3=5&rsv_sug1=1&rsv_sug2=0&inputT=1102&rsv_sug4=1465'


" ----------------------------------------------
" plasticboy/vim-markdown
" ----------------------------------------------
" gx: open the link under the cursor 
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:vim_markdown_folding_disabled=1       "�۵�
let g:vim_markdown_frontmatter=1
" ���ı�Ŀ¼
nmap <Leader>to :Toc <CR>
" ��ʽ������
nmap <Leader>tf :TableFormat <CR>

" ----------------------------------------------
" qw8880000/DoxygenToolkit
" ----------------------------------------------
" ����ע�Ͳ��
" ��������
nmap <leader>dl :DoxLic<CR>
" ��������
nmap <leader>da :DoxAuthor<CR>
" ���뺯��/��ע��
nmap <leader>dx :Dox<CR>
let g:DoxygenToolkit_briefTag_pre="@Brief  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="wangjl" 
let g:DoxygenToolkit_versionString="v1.0"


" ----------------------------------------------
" xolox/vim-notes
" ----------------------------------------------
"д��־��

" ----------------------------------------------
" xolox/vim-misc
" ----------------------------------------------

" ----------------------------------------------
" vimwiki/vimwiki
" ----------------------------------------------
"�����д�ĵ�������markdown���﷨���������ת��wiki�ĵ�

" ----------------------------------------------
" sketch.vim
" ----------------------------------------------
" ��껭��ͼ���
nmap <F4> :call ToggleSketch()<CR>

" ----------------------------------------------
" DrawIt
" ----------------------------------------------
"�������ͼ

" ----------------------------------------------
" EasyGrep
" ----------------------------------------------
"<Leader>vv  - Grep for the word under the cursor, match all occurences,like 'g*'.  See ":help gstar".
"<Leader>vV  - Grep for the word under the cursor, match whole word, like'*'.  See ":help star".
"<Leader>va  - Like vv, but add to existing list.
"<Leader>vA  - Like vV, but add to existing list.
"<Leader>vr  - Perform a global search on the word under the cursor and prompt for a pattern with which to replace it.
"<Leader>vR  - Like vr, but match whole word.
"<Leader>vo  - Open an options explorer to select the files to search in and set grep options.

" ----------------------------------------------
" mileszs/ack.vim
" ----------------------------------------------
" ��������������ųƱ�grep����
" usage:
"   :Ack [options] {pattern} [{directories}]
nmap <Leader>a :Ack <C-R><C-W>
nmap <Leader>aa :AckAdd <C-R><C-W>
nmap <Leader>afs :AckFromSearch <CR>
nmap <Leader>la :LAck <C-R><C-W>
nmap <Leader>laa :LAckAdd <C-R><C-W>

" ----------------------------------------------
" rking/ag.vim
" ----------------------------------------------
" ��������

" ----------------------------------------------
" dyng/ctrlsf.vim
" ----------------------------------------------
" ����ack.vim/ag.vim,��ack����ag��ͬ���ǣ���������ʾһ�У�������ʾ����������
"
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_position = 'left'
let g:ctrlsf_winsize = '40%'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>w <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


" ----------------------------------------------
" jiangmiao/auto-pairs
" ----------------------------------------------
"  �����������Զ���ȫ

" ----------------------------------------------
" tpope/vim-surround
" ----------------------------------------------
" ���ٸ�����/�����������ӷ��ţ�����html��ǩ����ȱ���ǲ�����"."���ظ�����
" ���� repeat ������Խ��������⣬��ϸ������ :h surround.txt

" ----------------------------------------------
" Mark--Karkat
" ----------------------------------------------
" ����ͬ�ĵ��ʸ�����������ͬ�ı���ʱ�����ã���ϸ������ :h mark.txt
"<Leader>m  Mark the word under the curso
"<Leader>n  Clear the mark under the curso
"<Leader>r  Manually input a regular expression to mar
":MarkClear		Clear all marks

" ----------------------------------------------
" repeat.vim
" ----------------------------------------------
" ��Ҫ��"."�������ظ��ϴβ��ʹ�õ�����

" ----------------------------------------------
" jlanzarotta/colorSchemeExplorer
" ----------------------------------------------
" ����Ԥ����ɫ����

" ----------------------------------------------
" maksimr/vim-jsbeautify
" ----------------------------------------------
"javascript �����ʽ��

" ----------------------------------------------
" easymotion/vim-easymotion
" ----------------------------------------------
" �����ƶ����

" ----------------------------------------------
" terryma/vim-multiple-cursors
" ----------------------------------------------
" ����ط�ͬʱ���б༭�Ĳ��

" ----------------------------------------------
" qw8880000/vim_ascii_art
" ----------------------------------------------
" ���� ascii ͼ����һ�����

" ----------------------------------------------
" kshenoy/vim-signature
" ----------------------------------------------
" vim-signature is a plugin to place, toggle and display marks.

" ----------------------------------------------
" scrooloose/nerdcommenter
" ----------------------------------------------
" ����Ҫ����C/C++����ע��(������Ҳ��)
" ����Ϊ���Ĭ�Ͽ�ݼ������е�˵������C/C++Ϊ���ģ�������������
" <Leader>ci ��ÿ��һ�� /* */ ע��ѡ����(ѡ������������)����������ȡ��ע��
" <Leader>cm ��һ�� /* */ ע��ѡ����(ѡ������������)������������ظ�ע��
" <Leader>cc ע��ѡ���л���������������ظ�ע��
" <Leader>cu ȡ��ѡ������(��)��ע�ͣ�ѡ������(��)��������һ�� /* */
" <Leader>ca ��/*...*/��//������ע�ͷ�ʽ���л����������Կ��ܲ�һ���ˣ�
" <Leader>cA ��βע��
let NERDSpaceDelims = 1                     "����ע�ͷ�֮����ע�ͷ�֮ǰ���пո�


" -----------------------------------------------------------------------------
"  < �������� >
" -----------------------------------------------------------------------------
set encoding=utf-8                                " ����gvim�ڲ����룬Ĭ�ϲ�����
" set fileencoding=utf-8                          " ���õ�ǰ�ļ����룬���Ը��ģ��磺gbk��ͬcp936��
set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 " ����֧�ִ򿪵��ļ��ı���
                                                  " �ļ���ʽ��Ĭ�� ffs=dos,unix
set fileformat=unix                               " �����£���ǰ���ļ���<EOL>��ʽ�����Ը��ģ��磺dos��windowsϵͳ���ã�
set fileformats=unix,dos,mac                      " �����ļ���<EOL>��ʽ����
if version >= 603
	set helplang=cn                               " ʹ�����İ���
endif

" -----------------------------------------------------------------------------
"  < �������� >
" -----------------------------------------------------------------------------
filetype on                            " �����ļ��������
filetype plugin on                     " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on              " ��������

if has("syntax")
	syntax on                          " enables syntax highlighting by default
endif
set t_Co=256                           " ���ն�����256ɫ
colorscheme molokai                    " ������ɫ����
set guifont=Courier_new:h12:b:cDEFAULT " ��������


set hlsearch                           " ��������
set incsearch                          " ������Ҫ����������ʱ��ʵʱƥ��
set ignorecase                         " ����ģʽ����Դ�Сд
set smartcase                          " �������ģʽ������д�ַ�����ʹ�� 'ignorecase' ѡ��
set number                             " ��ʾ�к�
set laststatus=2                       " ����״̬����Ϣ
set cursorline                         " ͻ����ʾ��ǰ��
set cmdheight=2                        " ���������еĸ߶�Ϊ2��Ĭ��Ϊ1
set nowrap                             " ���ò��Զ�����
"set shortmess=atI                     " ȥ����ӭ����
set tabstop=4                          " ����Tab���Ŀ��ȣ����Ը��ģ��磺����Ϊ2
"set mouse-=a                          " a ���κ�ģʽ��������� -a:���������
set backspace=2                        " backspace ����
set smarttab                           " ָ����һ��backspace��ɾ��shiftwidth����
set shiftwidth=4                       " ����ʱ�Զ��������ȣ��ɸ��ģ�����ͬtabstop��
set expandtab                          " ��Tab��ת��Ϊ�ո�
set smartindent                        " �������ܶ��뷽ʽ
set writebackup                        " �����ļ�ǰ�������ݣ�����ɹ���ɾ���ñ���

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" ����ÿ�г���80�е��ַ���ʾ��������������»��ߣ�
if has("autocmd")
	" ���´��ļ�ʱ�ص��ϴ�λ�� 
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" �Զ��л�Ŀ¼Ϊ��ǰ�༭�ļ�����Ŀ¼
au BufRead,BufNewFile,BufEnter * cd %:p:h

" -----------------------------------------------------------------------------
"  < ��ݼ�ӳ�� >
" -----------------------------------------------------------------------------
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" ע�����������е�"<Leader>"�ڱ�����������Ϊ"\"����������ķ�б�ܣ�����<Leader>t
" ָ�ڳ���ģʽ�°�"\"����"t"�������ﲻ��ͬʱ���������Ȱ�"\"����"t"���������һ
" ���ڣ���<Leader>cs���Ȱ�"\"���ٰ�"c"���ٰ�"s"������Ҫ�޸�"<leader>"�������԰�
let mapleader = ","

