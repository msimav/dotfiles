set -gx NODENV_ROOT $HOME/.nodenv

if test -d $NODENV_ROOT/shims
  set -gx PATH $NODENV_ROOT/shims $PATH
end

if command -s nodenv > /dev/null
  function _init_nodenv --on-event fish_preexec
    if test "nodenv" = $argv[1] -a "function" != (type -t nodenv)
      source (nodenv init -|psub)
    end
  end
end
