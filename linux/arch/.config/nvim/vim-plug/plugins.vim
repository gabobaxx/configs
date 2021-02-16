call plug#begin('~/.config/nvim/plugged')
    
    " Comment code
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
        " Easy motion for VSCode
"        Plug 'asvetliakov/vim-easymotion'
    else
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        
        " Typing 
        Plug 'jiangmiao/auto-pairs'
        Plug 'alvan/vim-closetag'
        " Plug 'tpope/vim-surround' 

        " File explorer
        Plug 'scrooloose/NERDTree'    
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " Ranger
        
        " Icons
        Plug 'ryanoasis/vim-devicons'
        
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        
        " Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        
        " Indent guides
        Plug 'Yggdroot/indentLine' 
        
        " Git integration
        " Plug 'mhinz/vim-signify'
        " Plug 'tpope/vim-fugitive'
        " Plug 'tpope/vim-repeat'    

        " Search
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
 
        " Prettier
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

        " Themes
        Plug 'joshdick/onedark.vim'
        Plug 'kaicataldo/material.vim'
        Plug 'tomasiser/vim-code-dark'
        Plug 'crusoexia/vim-monokai'
        Plug 'ayu-theme/ayu-vim'
        Plug 'dracula/vim', { 'as': 'dracula' }
    endif
call plug#end()
