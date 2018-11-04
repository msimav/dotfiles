if test -d "/usr/local/opt/coreutils/libexec/gnubin" ; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

if test "Darwin" = "$(uname -o)"; then
  alias ldd='otool -L'
fi
