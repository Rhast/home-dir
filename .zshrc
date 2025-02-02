# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

alias home='git --work-tree=$HOME --git-dir=$HOME/.cfg'

eval $(/opt/homebrew/bin/brew shellenv)

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi




# source $ZSH/oh-my-zsh.sh
source $HOME/.zsh-keybindings
source $HOME/.zsh-prompt
