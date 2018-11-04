if [ -x "$(command -v fzf)" ]; then
  export FZF_DEFAULT_COMMAND='ag --ignore-dir .git --hidden -g "" 2> /dev/null'
  vimf() { vim $(fzf) }
  tm() {
    [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
    if [ $1 ]; then
      tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
    fi
    session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
  }

  [ -d /usr/local/opt/fzf/shell ] && source /usr/local/opt/fzf/shell/key-bindings.zsh
fi
