# Disable beep
xset b off

#--- ENV ----------------------------------------------------------------------
export GPG_TTY=$(tty)
export ZSH="/home/$USER/.oh-my-zsh"
export GOPATH="$HOME/go"
export GO111MODULE=on
export SSH_KEY_PATH="~/.ssh/id_rsa"

#--- PATH ---------------------------------------------------------------------
PATH="$PATH:$HOME/.config/composer/vendor/bin"
PATH="$PATH:$HOME/.npm-global/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/.cargo/bin"

#--- ZSH ----------------------------------------------------------------------
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

plugins=(
    git
    sudo
    gitignore
    mvn
    docker
    docker-compose
    httpie
    kubectl
    minikube
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
autoload -Uz compinit
compinit

#--- Aliases ------------------------------------------------------------------
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias i3config="vim ~/.config/i3/config"
alias polyconfig="vim ~/.config/polybar/config"
alias bashrc="vim ~/.bashrc"
alias ghci="stack ghci"
alias runghc="stack runghc"
alias ghc="stack ghc"
alias sudo="sudo "
alias sysinst="yay -S --noconfirm "
alias sysupdate="yay -Syu --noconfirm"
alias copy="xclip -sel clip"
alias nethogs="sudo nethogs"
alias th="trash"
alias mk="minikube"
alias ms="minishift"

# docker
alias di="docker image"
alias dc="docker container"
alias dnw="docker network"
alias dsr="docker service"
alias dnd="docker node"
alias dpl="docker pull"
alias dph="docker push"
alias dsm="docker system"
alias dv="docker volume"
alias dl="docker logs"
alias db="docker build"

#--- Functions ----------------------------------------------------------------
function path() {
    echo $PATH | awk 'BEGIN {RS = ":"} {print $0}'
}

function bak() {
    cp $1 "$1.bak"
}

function sslcrypt() {
    openssl passwd -crypt $1
}

function randr() {
    xrandr --output "$1" --auto --scale-from 1366x768 --output LVDS1
}
# xrandr --fb 1366x768 --output LVDS1 --mode 1366x768 --scale 1x1 --primary --output VGA1 --same-as LVDS1 --mode 1024x768 --scale-from 1366x768

function aliases() {
    gawk 'BEGIN{printf "\n%-16s %s\n", "ALIAS", "COMMAND"} match($0, /^alias\s(.+)=(".*")$/, a) {printf "%-16s %s\n", a[1], a[2]}' $HOME/.zshrc
}

function zshplugin() {
    local dir="$HOME/.oh-my-zsh/plugins/$1"
    [ -d "$dir" ] && less "$dir/README.md" || echo "ZSH plugin '$1' not found."
}

[ -s "/home/wk/.jabba/jabba.sh" ] && source "/home/wk/.jabba/jabba.sh"
