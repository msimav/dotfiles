# ZSH_THEME="wedisagree"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

plugins=(git tmuxinator scala sudo command-not-found)

ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
