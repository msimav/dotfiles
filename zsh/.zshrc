# Source all files!!
if [[ -d ~/.zsh.d ]]; then
  for file in ~/.zsh.d/*.sh; do
    source "$file"
  done
fi
