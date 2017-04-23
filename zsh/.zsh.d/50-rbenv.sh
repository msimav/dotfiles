export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$RBENV_ROOT/shims:$PATH"

# Lazy initializer to speed up zsh startup
rbenv() {
  eval "$(command rbenv init -)"
  rbenv "$@"
}
