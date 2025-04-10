# System Configuration

## Config SHELL

I am using zsh shell 

### Installing

``sudo pacman -S zsh zsh-completions``

<p>Cambia la shell por defecto</p>

``chsh -s /bin/zsh ``

``sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"``


### Theme

``.zshrc``

``ZSH_THEME="dst"`` 

### Plugins

1. Auto Suggestions = Auto Complete
2. Syntax highlighting = Colors on Syntax
3. exa = ``ll`` colored command

``sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting exa``

<p>Para instalar yay</p>

``sudo pacman -S --needed base-devel git``

``git clone https://aur.archlinux.org/yay.git``

``cd yay``

``makepkg -si``

<p>Instalar zsh sudo</p>

``yay -S zsh-sudo``

``sudo pacman -S ``

### Config File

``git clone https://github.com/gabobaxx/configs.git``
