if test -d /usr/local/var/pyenv
  set -gx PYENV_ROOT /usr/local/var/pyenv
end

if test -d $HOME/.pyenv
  set -gx PYENV_ROOT $HOME/.pyenv
end

if test -d $PYENV_ROOT
  set -gx PATH $PYENV_ROOT/bin $PYENV_ROOT/shims $PATH
end

if test -x (command -v pyenv)
  function _init_pyenv --on-event fish_preexec
    if test "pyenv" = $argv[1] -a "function" != (type -t pyenv)
      source (pyenv init -|psub)
    end
  end
end
