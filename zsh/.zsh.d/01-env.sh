export EDITOR="vim"
export VISUAL="sublime"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ "$COLORTERM" = "xfce4-terminal" ]; then
    export TERM=xterm-256color
fi

if [ -n "$TMUX" ]; then
    export TERM=screen-256color
fi
