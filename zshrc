xset b off

# env
export GPG_TTY=$(tty)
export EDITOR=vim
export ZSH="/home/$USER/.oh-my-zsh"
export GOPATH="$HOME/go"
export BROWSER="/usr/bin/firefox"
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"

# PATH
PATH="$PATH:$HOME/.config/composer/vendor/bin"
PATH="$PATH:$HOME/.npm-global/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/.cargo/bin"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# ZSH plugins
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo gitignore)
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias i3config="vim ~/.config/i3/config"
alias polyconfig="vim ~/.config/polybar/config"
alias bashrc="vim ~/.bashrc"
alias ghci="stack ghci"
alias runghc="stack runghc"
alias ghc="stack ghc"
alias rm="trash"
alias sudo="sudo "
alias java8="/usr/lib/jvm/java-8-openjdk/bin/java"
alias utf="cat ~/unicodes"
alias install="yay -S --noconfirm "
alias update="yay -Syu --noconfirm"
alias copy="xclip -sel clip"
alias di="docker image"
alias dc="docker container"
alias dn="docker network"
alias nethogs="sudo nethogs"

function path {
    echo $PATH | awk 'BEGIN {RS = ":"} {print $0}'
}

function bak {
    cp $1 "$1.bak"
}

function cancerize {
    /usr/local/bin/cancerize "$@" | xclip -sel clip
}

function sslcrypt {
    openssl passwd -crypt $1
}

function randr {
    xrandr --output "$1" --auto --scale-from 1366x768 --output LVDS1
}
# xrandr --fb 1366x768 --output LVDS1 --mode 1366x768 --scale 1x1 --primary --output VGA1 --same-as LVDS1 --mode 1024x768 --scale-from 1366x768
