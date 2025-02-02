# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

alias home='git --work-tree=$HOME --git-dir=$HOME/.cfg'

eval $(/opt/homebrew/bin/brew shellenv)

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

# ZSH config
# Path to your oh-my-zsh installation.
export ZSH="/Users/rhast/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# source $ZSH/oh-my-zsh.sh
source $HOME/.zsh-keybindings
