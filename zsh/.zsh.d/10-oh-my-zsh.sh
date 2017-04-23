# ZSH_THEME="wedisagree"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_SHORTEN_STRATEGY='truncate_folders'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv time)
# POWERLEVEL9K_COLOR_SCHEME='light'

DISABLE_LS_COLORS="true"

plugins=(git tmuxinator scala sublime vagrant colorize)

if [[ "$OSTYPE" = darwin* ]]; then
  plugins=(osx $plugins)
fi

ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
