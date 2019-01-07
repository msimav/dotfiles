function tm
  if test -n $TMUX
    set change switch-client
  else
    set change attach-session
  end
 
  if test (count $argv) -eq 2
    tmux $change -t $argv[2] ^/dev/null
  else
    tmux $change -t (tmux list-sessions -F "#{session_name}" ^/dev/null | fzf --exit-0) 
  end
end
