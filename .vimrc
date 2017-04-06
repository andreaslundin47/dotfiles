
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

" Install dracula theme
    Plugin 'dracula/vim'

" Install lucario theme
    Plugin 'raphamorim/lucario'

" Install Monokai refined theme
    Plugin 'jaromero/vim-monokai-refined'

" Install the quantum colourscheme
    Plugin 'tyrannicaltoucan/vim-quantum'

" Install airline status bar
    Plugin 'vim-airline/vim-airline'

" vim-airline-themes
    Plugin 'vim-airline/vim-airline-themes'

" nerdtree for file browsing
    Plugin 'scrooloose/nerdtree'

" vim-fugitive for git integration
    Plugin 'tpope/vim-fugitive'

" Plugin for git status in line number column
    Plugin 'airblade/vim-gitgutter'

" python-mode
    Plugin 'klen/python-mode'
"
" better python syntax highlighting
    Plugin 'hdima/python-syntax'

" extra syntax highlighting for C/C++
    Plugin 'justinmk/vim-syntax-extra'

" Arduino syntax and indentation
    Plugin 'sudar/vim-arduino-syntax'

" Surround plugin
    Plugin 'tpope/vim-surround'

" Repeat plugin - Enables dot repeat command for seveal plugins
    Plugin 'tpope/vim-repeat'

" Easy motion
    Plugin 'easymotion/vim-easymotion'

" Nerd Commenter plugin
    Plugin 'scrooloose/nerdcommenter'

" Emmet-vim plugin
    Plugin 'mattn/emmet-vim'

" Close-tag Plugin
    Plugin 'alvan/vim-closetag'

" Better html indentation
    Plugin 'bitfyre/vim-indent-html'

" Better javascript highlighting
    Plugin 'jelera/vim-javascript-syntax'

" Easy align Plugin
    Plugin 'junegunn/vim-easy-align'

" Improved syntax highlighting
    Plugin 'vim-scripts/cSyntaxAfter'

" Install ultisnippets
    Plugin 'SirVer/ultisnips'

" Install snippets
    Plugin 'honza/vim-snippets'

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





" General settings

" Line numbers
    set number
" Tab width
    set tabstop=4
" Auto-indent width
    set shiftwidth=4
" Convert tabs to spaces
    set expandtab
" Set laststatus
    set laststatus=2
" Set backspace behaviour
    set backspace=2
" Use highlighted cursor line
    "set cursorline

" Map the leader key
    let mapleader="\<Space>"

" Tab management
    nnoremap <S-q> :bprevious<CR>
    nnoremap <S-t> :tabnew<CR>
    nnoremap <S-e> :bnext<CR>

" Bind nerdtree
    nnoremap <Leader>n :NERDTreeToggle<CR>

" Bind fugitive Gstatus
    nnoremap <Leader>g :Gstatus<CR>

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

" Set quick save
    nnoremap <Leader>w :w<CR>

" Set quick close
    nnoremap <Leader>c :q<CR>

" Set quick close of a single buffer
    nnoremap <Leader>q :bd<CR>

" Set quick buffer next
    nnoremap <Leader>e :bnext<CR>

" Syntax highlighting
    syntax on

" Set background and colors
    set t_Co=256
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
    
    " Needs to be after the above for background color to be right
    colorscheme Monokai-Refined
    " colorscheme lucario
    " colorscheme dracula

    highlight LineNr ctermfg=None ctermbg=None
    highlight CursorLineNr ctermfg=Yellow gui=bold guifg=Yellow
    " highlight CursorLine ctermbg=SteelBlue

" Determine indent type from file type
    filetype plugin indent on

" Hidden - Lets me move between buffers without saving every. Single. Time.
    set hidden

" Disable backup files
    set nobackup
    set nowritebackup
    set noswapfile

" Use system clipboard, copy/paste same for everywhere
    set clipboard=unnamed
    set clipboard=unnamedplus

" vim-airline configuration
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'

" Python mode
    let g:pymode_rope = 0
    let g:pymode_folding = 0
    let g:pymode_options_colorcolumn = 0

" LaTeX specific setting
    au Filetype tex setlocal tw=80
    " au Filetype tex setlocal spell spelllang=en_gb


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

autocmd FileType tex call Tex_MakeMap('<leader>ll', ':update!<CR>:call Tex_RunLaTeX()<CR>', 'n', '<buffer>')
autocmd FileType tex call Tex_MakeMap('<leader>ll', '<ESC>:update!<CR>:call Tex_RunLaTeX()<CR>', 'v', '<buffer>')

let g:Tex_AutoFolding = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_DefaultTargetFormat='pdf'

" Settings for java highlighting
let java_mark_braces_in_parens_as_errors=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"

" Activate more highlighting from cSyntaxAfter plugin
autocmd! FileType c,cpp,java,php call CSyntaxAfter()



" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Snippets settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Fixes the indenting in html style tags
let g:html_indent_style1 = "inc" 

" Slowest but most accurate syntax highlighting
autocmd BufEnter * :syntax sync fromstart

" Set the update frequenzy of the git gutter
set updatetime=500

