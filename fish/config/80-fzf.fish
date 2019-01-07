if test -x (command -v fzf)
  set -x FZF_DEFAULT_COMMAND 'ag --ignore-dir .git --hidden -g "" 2> /dev/null'
  test -d /usr/local/opt/fzf/shell && source /usr/local/opt/fzf/shell/key-bindings.fish
end
