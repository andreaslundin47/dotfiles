
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

" Colorschemes
    Plugin 'dracula/vim'
    Plugin 'raphamorim/lucario'
    Plugin 'jaromero/vim-monokai-refined'
    Plugin 'tyrannicaltoucan/vim-quantum'
    Plugin 'crusoexia/vim-monokai'
    Plugin 'KeitaNakamura/neodark.vim'
    Plugin 'zacanger/angr.vim'
    Plugin 'dikiaap/minimalist'

" Install airline status bar
    Plugin 'vim-airline/vim-airline'

" Themes for the airline status bar
    Plugin 'vim-airline/vim-airline-themes'

" browse file system in side window
    Plugin 'scrooloose/nerdtree'

" Different types of git integration
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'

" python-mode and better python highlighting
    Plugin 'klen/python-mode'
    Plugin 'hdima/python-syntax'

" extra syntax highlighting for C/C++
    Plugin 'justinmk/vim-syntax-extra'

" Arduino syntax and indentation
    Plugin 'sudar/vim-arduino-syntax'

" Surround plugin - edit inside "')}] etc. easier
    Plugin 'tpope/vim-surround'

" Repeat plugin - Enables dot repeat command for several other plugins
    Plugin 'tpope/vim-repeat'

" Easy motion - allows fast navigation
    Plugin 'easymotion/vim-easymotion'

" Nerd Commenter plugin - Easy to add or remove commented lines
    Plugin 'scrooloose/nerdcommenter'

" Emmet-vim plugin - html/css shortcuts
    Plugin 'mattn/emmet-vim'

" Close-tag Plugin - auto add closing html tags
    Plugin 'alvan/vim-closetag'

" Better html indentation - Improves the indentation behaviour for html/css
    Plugin 'bitfyre/vim-indent-html'

" Better javascript highlighting
    Plugin 'pangloss/vim-javascript'

" Additional javascript syntax information
    Plugin 'crusoexia/vim-javascript-lib'

" Easy align Plugin - 
    Plugin 'junegunn/vim-easy-align'

" Some more general syntax highlighting improvements
"    Plugin 'vim-scripts/cSyntaxAfter'

" Insert code template snippets
    Plugin 'SirVer/ultisnips'

" Add library of snippets to use
    Plugin 'honza/vim-snippets'

" inserts lines that show the indentation level
    Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"                     auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





" *************************  General settings ****************************

" Show line numbers in left column
    set number
" Tab width uses this number of spaces
    set tabstop=4
" Auto-indent width
    set shiftwidth=4
" Convert tabs to spaces
    set expandtab
" Set laststatus to always be shown, even when there is only one window
    set laststatus=2
" Set backspace behaviour to work like in most other programs
    set backspace=2

" Use syntax highlighting
    syntax on

" Always determine syntax highlighting from start of file. Slowest but
" most accurate
    autocmd BufEnter * :syntax sync fromstart

" Determine indent type from file type
    filetype plugin indent on

" Set background and colors. Not sure if this is even needed
    set t_Co=256
    set background=dark
    
" Default colorscheme 
    colorscheme neodark

" Removes the colorschemes highlighting of the line numbers
    highlight LineNr ctermfg=None ctermbg=None

" Allows switching between buffers and tabs without saving changes first
    set hidden

" Do not create any extra backup-files
    set nobackup
    set nowritebackup
    set noswapfile

" Use system clipboard, copy/paste same for everywhere
    set clipboard=unnamed
    set clipboard=unnamedplus





" ************************** General keymappings ************************

" Chose where to map the leader key
    let mapleader="\<Space>"

" Tab management
    nnoremap <S-q> :bprevious<CR>
    nnoremap <S-t> :tabnew<CR>
    nnoremap <S-e> :bnext<CR>

" Split screen movement bindings
    nnoremap <C-Left> <C-w>h
    nnoremap <C-Right> <C-w>l
    nnoremap <C-Up> <C-w>k
    nnoremap <C-Down> <C-w>j
    nnoremap <Leader>h <C-w>h
    nnoremap <Leader>l <C-w>l
    nnoremap <Leader>k <C-w>k
    nnoremap <Leader>j <C-w>j

" Remap half page scrolling
    nnoremap <Leader>d <C-d>
    nnoremap <Leader>u <C-u>

" Split screen resize bindings
    nnoremap <Leader>= <C-w>+
    nnoremap <Leader>- <C-w>-
    nnoremap <Leader>z <C-w>>
    nnoremap <Leader>/ <C-w><

" Set save shortcut
    nnoremap <Leader>w :w<CR>

" Set quick close
    nnoremap <Leader>c :q<CR>

" Set quick close of a single buffer
    nnoremap <Leader>q :bd<CR>

" Set quick buffer next
    nnoremap <Leader>e :bnext<CR>





" ******************** Plugin specific settings and keymappings *****************


" vim-airline configuration
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'



" Python mode
    let g:pymode_rope = 0
    let g:pymode_folding = 0
    let g:pymode_options_colorcolumn = 0



" LaTeX-suite specific setting

    " Break lines when they exceed 80 characters
    au Filetype tex setlocal tw=80

    " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
    filetype plugin on

    " IMPORTANT: grep will sometimes skip displaying the file name if you
    " search in a singe file. This will confuse Latex-Suite. Set your grep
    " program to always generate a file-name.
    set grepprg=grep\ -nH\ $*

    " OPTIONAL: This enables automatic indentation as you type.
    filetype indent on

    " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
    " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " The following changes the default filetype back to 'tex':
    let g:tex_flavor='latex'

    " Set shortcuts for compilation and viewing of output file
    autocmd FileType tex call Tex_MakeMap('<leader>ll', ':update!<CR>:call Tex_RunLaTeX()<CR><CR>', 'n', '<buffer>')
    autocmd FileType tex call Tex_MakeMap('<leader>ll', '<ESC>:update!<CR>:call Tex_RunLaTeX()<CR><CR>', 'v', '<buffer>')

    " turn off the autofolding
    let g:Tex_AutoFolding = 0
    " Always use normal quotation marks
    let g:Tex_SmartKeyQuote = 0
    " Always output pdf-files as standard
    let g:Tex_DefaultTargetFormat='pdf'



" Configure java highlighting
    let java_mark_braces_in_parens_as_errors=1
    let java_highlight_java_lang_ids=1
    let java_highlight_functions="style"



" EasyAlign
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)



" UltiSnips
    " Snippets settings
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"



" Fixes the indenting in html style tags
    let g:html_indent_style1 = "inc" 



" IndentLine
    " Do not show indent lines on start
    let g:indentLine_enabled = 0
    " Set shortcut to toggle indent line
    nnoremap <Leader>i :IndentLinesToggle<CR>



" NerdTree

    " set key to toggle showing file viewer
    nnoremap <Leader>n :NERDTreeToggle<CR>



" Bind fugitive Gstatus

    " Show git status keymap
    nnoremap <Leader>g :Gstatus<CR>



" Gitgutter

    " Set the update frequenzy of the git gutter
    set updatetime=500

