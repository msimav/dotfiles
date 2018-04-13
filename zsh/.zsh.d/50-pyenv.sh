test -d /usr/local/var/pyenv && PYENV_ROOT=/usr/local/var/pyenv
test -d $HOME/.pyenv && PYENV_ROOT=$HOME/.pyenv

if test -d "$PYENV_ROOT"; then
  export PYENV_ROOT
  export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"

  # Lazy initializer to speed up zsh startup
  pyenv() {
      eval "$( command pyenv init -)"
      pyenv "$@"
  }
fi
