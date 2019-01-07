if test -d /usr/local/var/rbenv
  set -gx RBENV_ROOT /usr/local/var/rbenv
end

if test -d $HOME/.rbenv
  set -gx RBENV_ROOT $HOME/.rbenv
end

if test -d $RBENV_ROOT
  set -gx PATH $RBENV_ROOT/bin $RBENV_ROOT/shims $PATH
end

if test -x (command -v rbenv)
  function _init_rbenv --on-event fish_preexec
    if test "rbenv" = $argv[1] -a "function" != (type -t rbenv)
      source (rbenv init -|psub)
    end
  end
end
