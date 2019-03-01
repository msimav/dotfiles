if test -d /usr/local/opt/coreutils/libexec/gnubin
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
end

if test "Darwin" = (uname)
  alias ldd 'otool -L'
end
