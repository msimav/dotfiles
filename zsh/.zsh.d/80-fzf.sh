if [ -x "$(command -v fzf)" ]; then
  export FZF_DEFAULT_COMMAND='ag -g ""'
  vimf() { vim $(fzf) }
fi
