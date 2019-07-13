# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=vim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

xset b off
export GPG_TTY=$(tty)

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

# env
export GOPATH="$HOME/go"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"

# PATH
PATH="$PATH:$HOME/.config/composer/vendor/bin"
PATH="$PATH:$HOME/.npm-global/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/.cargo/bin/racer"

# running neofetch when a new shell starts
neofetch
