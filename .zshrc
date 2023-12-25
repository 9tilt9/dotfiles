# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50
SAVEHIST=200
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/felix/.zshrc'

#using pywal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors.sh
eval "$(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)"

#Change prompt
PS1='%~ '

#Change window title
function precmd () {
    print -Pn -- '\e]2;%n@%m \a'
}

#load autocomplete and syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Aliases
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

