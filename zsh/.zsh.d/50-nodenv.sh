export NODENV_ROOT=$HOME/.nodenv

if test -d "$NODENV_ROOT"; then
  export PATH="$NODENV_ROOT/shims:$PATH"

  # Lazy initializer to speed up zsh startup
  nodenv() {
    eval "$(command nodenv init -)"
    nodenv "$@"
  }
fi
