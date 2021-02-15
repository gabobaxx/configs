# TODO: README with the programas that have to download.  

# some more ls aliases
alias ll='exa --long --header --git --all --group-directories-first'
alias ls='exa --group-directories-first'
alias dir='dir --color=yes'

# interactive aliases
alias rm='rm -i --verbose'
alias mv='mv -i --verbose'
alias rmdir='rmdir -i --verbose'
alias cp='cp -r -i --verbose'

# shortcuts
alias v='nvim'
alias nf='neofetch'
alias e='exec bash'
alias r='ranger'

# some more aliases 
alias cls='clear'
alias cll='clear && ll'
alias tree='exa -T'
alias grep='grep --color=auto' 
alias c='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint"'
alias cat='cat -n'
alias configs='cd ~/Documents/code/configs/gabriel-configs/'

# copy configs
alias cpalias='cp ~/.bash_aliases ~/Documents/code/configs/gabriel-configs/linux/arch/'
alias cphelp='cp ~/.help ~/Documents/code/configs/gabriel-configs/help'

