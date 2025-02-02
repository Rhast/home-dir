# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

alias home='git --work-tree=$HOME --git-dir=$HOME/.cfg'

eval $(/opt/homebrew/bin/brew shellenv)

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

files_to_source=(
    "$HOME/.zsh-keybindings"
    "$HOME/.zsh-prompt"
    # Accept on key-right doesn't work
    # "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    "$(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
)

for file in "${files_to_source[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done
