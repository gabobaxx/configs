# TODO: README with the programas that have to download.  

# some more ls aliases
alias ll='exa --long --header --git --all --group-directories-first'
alias ls='exa --group-directories-first'
alias dir='dir --color=yes'

# interactive aliases
alias rm='rm -i --verbose'
alias mv='mv -i --verbose'
alias cp='cp -r --verbose'
alias rmdir='rmdir --verbose'

# shortcuts
alias setmapus='setxkbmap us'
alias setmapes='setxkbmap es'
alias v='nvim'
alias code='vscodium'
alias nf='neofetch'
alias e='exec $SHELL -l'
alias r='ranger'
alias dev-list='simple-mtpfs -l'
alias dev-mount='simple-mtpfs --device 1 ~/mounted'
alias addalias='v ~/.bash_aliases'
alias setcolor='sh ~/workspaces/testing/scripts/qtilecolor.sh'

# some more aliases 
alias codejs='code ~/workspaces/vscode-workspaces/ts-js.code-workspace'
alias cls='clear'
alias cll='clear && ll'
alias tree='exa -T'
alias grep='grep --color=auto' 
alias c='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint"'
alias configs='cd ~/workspaces/configs/gabriel-configs/'
alias ip="ip route get 1.2.3.4 | awk '{print $7}'"
alias rmpacdb='sudo rm /var/lib/pacman/db.lck'

# copy configs
alias cpalias='cp ~/.bash_aliases ~/workspaces/configs/gabriel-configs/bash/'
alias cphelp='cp ~/.help/* ~/workspaces/configs/gabriel-configs/help/'
alias cpvim='cp ~/.config/nvim ~/workspaces/configs/gabriel-configs/linux/arch/.config/'
alias cpqtile='cp ~/.config/qtile ~/workspaces/configs/gabriel-configs/linux/arch/.config/'
