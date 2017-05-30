" Specify the directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
    Plug 'dracula/vim'
    Plug 'raphamorim/lucario'
    Plug 'jaromero/vim-monokai-refined'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'crusoexia/vim-monokai'
    Plug 'KeitaNakamura/neodark.vim'

" Airline statusbar
    Plug 'vim-airline/vim-airline'

" browse file system in side window
    Plug 'scrooloose/nerdtree'

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

" Repeat plugin - Enables dot repeat command for several other plugins
    Plug 'tpope/vim-repeat'

" Easy motion - allows fast navigation
    Plug 'easymotion/vim-easymotion'

" Nerd Commenter plugin - Easy to add or remove commented lines
    Plug 'scrooloose/nerdcommenter'

" Automatically add closing html tag
    Plug 'alvan/vim-closetag'

" Better html indentation - Improves the indentation behaviour for html/css
    Plug 'bitfyre/vim-indent-html'

" Better javascript highlighting
    Plug 'pangloss/vim-javascript'

" Additional javascript syntax information
    Plug 'crusoexia/vim-javascript-lib'

" Easy align Plugin - 
"    Plug 'junegunn/vim-easy-align'

" Some more general syntax highlighting improvements
"    Plugin 'vim-scripts/cSyntaxAfter'

" Insert code template snippets
"    Plugin 'SirVer/ultisnips'

" Add library of snippets to use
"    Plugin 'honza/vim-snippets'

" inserts lines that show the indentation level
"    Plugin 'Yggdroot/indentLine'

" Initialize the plugin system
call plug#end()


" ************************** General Settings *************************

" Show line number
    set number

" convert tabs to spaces
    set tabstop=4

" width of auto-indent
    set shiftwidth=4

" Tabs are converted to spaces
    set expandtab

" Use syntax highlighting
    syntax on

" Sync syntax highlighting from start of file all the time.
    autocmd BufEnter * :syntax sync fromstart

" Use indentation based on the file ending
    filetype plugin indent on

" Use colorscheme
    colorscheme neodark

" Allows switching between buffers and tabs without saving changes first
    set hidden

" Do not create extra backup files
    set nobackup
    set nowritebackup
    set noswapfile

" Use system clipboard, copy/paste same for everywhere
    set clipboard=unnamed
    set clipboard=unnamedplus




" ************************** General Keymappings ************************

" Chose where to map the leader key
    let mapleader="\<Space>"

" Movement between split windows
    nnoremap <Leader>h <C-w>h
    nnoremap <Leader>l <C-w>l
    nnoremap <Leader>k <C-w>k
    nnoremap <Leader>j <C-w>j

" Set save shortcut
    nnoremap <Leader>w :w<CR>

" ***********************************************************************


" vim-airline configuration
    let g:airline_powerline_fonts = 0
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'


" Python mode
    let g:pymode_rope = 0
    let g:pymode_folding = 0
    let g:pymode_options_colorcolumn = 0


" Set key to toggle file viewer
    nnoremap <Leader>n :NERDTreeToggle<CR>


" Fixes the indenting in html style tags
    let g:html_indent_style1 = "inc" 


" Fugitive Gstatus
    " Show git status keymap
    nnoremap <Leader>g :Gstatus<CR>


" Gitgutter
    " Set the update frequenzy of the git gutter
    set updatetime=200

