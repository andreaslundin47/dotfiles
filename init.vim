"
" Specify the directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
    Plug 'dracula/vim'
    Plug 'raphamorim/lucario'
    Plug 'jaromero/vim-monokai-refined'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'crusoexia/vim-monokai'
    Plug 'KeitaNakamura/neodark.vim'
    Plug 'mhartington/oceanic-next'

" Airline statusbar
    Plug 'vim-airline/vim-airline'

" browse file system in side window
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

" Different types of git integration
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

" python-mode and imporved python highlighting
    Plug 'klen/python-mode'
    Plug 'hdima/python-syntax'

" Imporved C/C++ syntax highlighting
    Plug 'justinmk/vim-syntax-extra'

" Arduino syntax and indentation
    Plug 'sudar/vim-arduino-syntax'

" Surround plugin - edit inside "')}] etc. easier
    Plug 'tpope/vim-surround'

" Automatically remove trailing whitespaces
    Plug 'thirtythreeforty/lessspace.vim'

" Repeat plugin - Enables dot repeat command for several other plugins
    Plug 'tpope/vim-repeat'

" Easy motion - allows fast navigation
    Plug 'easymotion/vim-easymotion'

" Nerd Commenter plugin - Easy to add or remove commented lines
    Plug 'scrooloose/nerdcommenter'

" Automatically add closing html tag
    Plug 'alvan/vim-closetag'

" Better html indentation and stuff
    Plug 'bitfyre/vim-indent-html'
    Plug 'othree/html5.vim'

" Better javascript highlighting
    Plug 'pangloss/vim-javascript'

" Additional javascript syntax information
    Plug 'crusoexia/vim-javascript-lib'

" inserts lines that show the indentation level
    Plug 'Yggdroot/indentLine'

" Latex
    Plug 'lervag/vimtex'
    "Plug 'LaTeX-Box-Team/LaTeX-Box'

" Autocompletion
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateremotePlugins'}
    Plug 'Shougo/echodoc.vim'

" Auto Pairs
    Plug 'jiangmiao/auto-pairs'

" Easy align Plugin
"    Plug 'junegunn/vim-easy-align'

" Some more general syntax highlighting improvements
"    Plugin 'vim-scripts/cSyntaxAfter'

" Insert code template snippets
"    Plugin 'SirVer/ultisnips'

" Add library of snippets to use
"    Plugin 'honza/vim-snippets'


" Initialize the plugin system
call plug#end()


" ************************** General Settings *************************

" Show line number
    set number relativenumber

" convert tabs to spaces
    set tabstop=4

" width of auto-indent
    set shiftwidth=4

" Tabs are converted to spaces
    set expandtab

" Tests terminal color support
    if (has("termguicolors"))
        set termguicolors
    endif

" Use syntax highlighting
    syntax on

" Set background and colors. Not sure if this is even needed
    set background=dark

" Use colorscheme
    "colorscheme neodark
    colorscheme OceanicNext

    let g:airline_theme='oceanicnext'

" Sync syntax highlighting from start of file all the time.
    autocmd BufEnter * :syntax sync fromstart

" Use indentation based on the file ending
    filetype plugin indent on

" Allows switching between buffers and tabs without saving changes first
    set hidden

" Do not create extra backup files
    set nobackup
    set nowritebackup
    set noswapfile

    set noshowmode

" Use system clipboard, copy/paste same for everywhere
    set clipboard=unnamed
    set clipboard=unnamedplus




" ************************** General Keymappings ************************

" Chose where to map the leader key
    let mapleader="\<Space>"
    let maplocalleader="\\"

" Movement between split windows
    nnoremap <Leader>h <C-w>h
    nnoremap <Leader>l <C-w>l
    nnoremap <Leader>k <C-w>k
    nnoremap <Leader>j <C-w>j

    nnoremap <LocalLeader>h <C-w>h
    nnoremap <LocalLeader>l <C-w>l
    nnoremap <LocalLeader>k <C-w>k
    nnoremap <LocalLeader>j <C-w>j


" Moving between buffers
    nnoremap <S-q> :bprevious<CR>
    nnoremap <S-e> :bnext<CR>
    nnoremap <Leader>e :bnext<CR>

" Set save shortcut
    nnoremap <Leader>w :w<CR>

" Set quick close
    nnoremap <Leader>q :q<CR>
    nnoremap <Leader>c :bd<CR>

" ***********************************************************************


" vim-airline configuration
    let g:airline_powerline_fonts = 2
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'


" Python mode
    let g:pymode_python = 'python3'
    let g:pymode_rope = 0
    let g:pymode_folding = 0
    let g:pymode_options_colorcolumn = 0
    let g:pymode_lint = 0


" Set key to toggle file viewer
    nnoremap <Leader>n :NERDTreeToggle<CR>


" Fixes the indenting in html style tags
    let g:html_indent_style1 = "inc"


" Improves Java syntax highlighting to some degree
    let java_mark_braces_in_parens_as_errors=1
    let java_highlight_java_lang_ids=1
    let java_highlight_functions="style"


" IndentLine
    let g:indentLine_enabled = 0
    " Set shortcut to toggle indent line
    nnoremap <Leader>i :IndentLinesToggle<CR>


" Fugitive Gstatus
    " Show git status keymap
    nnoremap <Leader>g :Gstatus<CR>


" Gitgutter
    " Set the update frequenzy of the git gutter
    set updatetime=200


" Activate deoplete
    let g:deoplete#enable_at_startup = 0

    let g:echodoc_enable_at_startup = 0

    filetype plugin on
    " set omnifunc=syntaxcomplete#Complete


" vimtex settings
    let g:tex_flavor = 'latex'
