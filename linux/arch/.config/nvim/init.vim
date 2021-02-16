" echom "Welcome master. HAPPY HACKING >.<"

" General
source $HOME/.config/nvim/general/settings.vim 	" sets
source $HOME/.config/nvim/general/maps.vim	    " maps
source $HOME/.config/nvim/vim-plug/plugins.vim	" plugs

if exists('g:vscode')
    source $HOME/.config/nvim/vscode/settings.vim
    source $HOME/.config/nvim/plug-config/easymotion.vim
else
   " Plugins
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/nerdtree.vim
    source $HOME/.config/nvim/plug-config/explorer.vim
    source $HOME/.config/nvim/plug-config/indentLine.vim
    source $HOME/.config/nvim/plug-config/vim-closetag.vim
    source $HOME/.config/nvim/plug-config/vim-commentary.vim
    source $HOME/.config/nvim/plug-config/rnvimr.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/plug-config/prettier.vim
   " source $HOME/.config/nvim/plug-config/signify.vim
    
    " Themes
    source $HOME/.config/nvim/general/colors.vim
    source $HOME/.config/nvim/themes/airline.vim
    source $HOME/.config/nvim/themes/onedark.vim
endif

" line enables syntax highlighting by default.
if has("syntax")
 syntax on
endif

" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" according to the detected filetype.
filetype plugin indent on

