test -d /usr/local/var/rbenv && RBENV_ROOT=/usr/local/var/rbenv
test -d $HOME/.rbenv && RBENV_ROOT=$HOME/.rbenv

if test -d "$RBENV_ROOT"; then
  export RBENV_ROOT
  export PATH="$RBENV_ROOT/bin:$RBENV_ROOT/shims:$PATH"

  # Lazy initializer to speed up zsh startup
  rbenv() {
    eval "$(command rbenv init -)"
    rbenv "$@"
  }
fi
