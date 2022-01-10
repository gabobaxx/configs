# TODO: README with the programas that have to download.  

# showing files alias
alias dir='dir --color=yes'
alias ls='exa --group-directories-first'
alias ll='exa --long --header --git --all --group-directories-first'

# interactive aliases
alias rm='rm -i --verbose'
alias mv='mv -i --verbose'
alias cp='cp -r --verbose'
alias rmdir='rmdir --verbose'

# shortcuts
alias v='nvim'
alias r='ranger'
alias nf='neofetch'
alias code='vscodium'
alias e='exec $SHELL -l'
alias setmapus='setxkbmap us'
alias setmapes='setxkbmap es'
alias dev-list='simple-mtpfs -l'
alias addalias='v ~/.bash_aliases'
alias dev-mount='simple-mtpfs --device 1 ~/mounted'
alias setcolor='sh ~/workspaces/testing/scripts/qtilecolor.sh'

# some more aliases 
alias cls='clear'
alias tree='exa -T'
alias cll='clear && ll'
alias grep='grep --color=auto' 
alias rmpacdb='sudo rm /var/lib/pacman/db.lck'
alias ip="ip route get 1.2.3.4 | awk '{print $7}'"
alias configs='cd ~/workspaces/configs/gabriel-configs/'
alias c='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint"'

# copy configs
alias cphelp='cp ~/.help/* ~/workspaces/configs/gabriel-configs/help/'
alias cpalias='cp ~/.bash_aliases ~/workspaces/configs/gabriel-configs/bash/'
alias cpvim='cp ~/.config/nvim ~/workspaces/configs/gabriel-configs/linux/arch/.config/'
alias cpqtile='cp ~/.config/qtile ~/workspaces/configs/gabriel-configs/linux/arch/.config/'

# vscode aliases 
alias codejs='code ~/workspaces/vscode-workspaces/ts-js.code-workspace' # open js workspace
alias codegabo= 'code ~/workspaces/vscode-workspaces/gaboland.code-workspace' # open gaboland workspace
