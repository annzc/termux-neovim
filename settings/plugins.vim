
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugs')

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'morhetz/gruvbox'
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'

    " VS Code like
    Plug 'neoclide/coc.nvim'

    " auto pairs for (), [], "", '', {}
    Plug 'jiangmiao/auto-pairs'

    " Statusline theme
    Plug 'vim-airline/vim-airline'
    "Plug 'itchyny/lightline.vim'

    " syntax highlighting
    "Plug 'scrooloose/syntastic'
    Plug 'sheerun/vim-polyglot'

    " FUZZY FINDER
    Plug 'junegunn/fzf'

    " NERDTree file explorer
    Plug 'preservim/nerdtree'

    " 
    Plug 'ryanoasis/vim-devicons'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

