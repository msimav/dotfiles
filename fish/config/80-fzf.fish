if command -s fzf > /dev/null
  set -x FZF_DEFAULT_COMMAND 'ag --ignore-dir .git --hidden -g "" 2> /dev/null'
end

if test -d /usr/local/opt/fzf/shell
  source /usr/local/opt/fzf/shell/key-bindings.fish
end
