export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$PYENV_ROOT/shims:$PATH"

# Lazy initializer to speed up zsh startup
pyenv() {
    eval "$( command pyenv init -)"
    pyenv "$@"
}
