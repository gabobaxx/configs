# System Configuration

## Config GIT & GitHub

``git config --global user.name "Tu Nombre"``

``git config --global user.email "tu.correo@example.com"``

``git config --global core.editor "nvim"``

Esto es importante para evitar problemas cuando colaboras en proyectos con personas que utilizan diferentes sistemas operativos.

Para la mayoría de los casos (especialmente si trabajas en un entorno mixto):

``git config --global core.autocrlf true``

``git config --list``

### GitHub

``ssh-keygen -t ed25519 -C "tu_correo@example.com"``

``eval "$(ssh-agent -s)"``

Agrega tu clave privada al agente. Si usaste la ubicación y nombre de archivo por defecto, el comando sería: 

``ssh-add ~/.ssh/id_ed25519``

Agregar la clave pública a tu cuenta de GitHub:

``https://github.com/settings/keys``

Copia el contenido de tu clave pública. Puedes hacerlo con el siguiente comando (reemplaza el nombre del archivo si es diferente): 

``cat ~/.ssh/id_ed25519.pub``

Probar la conexión SSH:
Abre tu terminal y ejecuta el siguiente comando:

``ssh -T git@github.com``

Si la conexión es exitosa, verás un mensaje como:

``Hi <TuNombreDeUsuario>! You've successfully authenticated, but GitHub does not provide shell access.``

## Config SHELL

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
