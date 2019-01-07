if command -s fasd > /dev/null
  function __fasd_run -e fish_preexec -d "fasd takes record of the directories changed into"
    command fasd --proc (command fasd --sanitize "$argv") > "/dev/null" 2>&1 &
  end

  function fasd_cd -d "fasd builtin cd"
    if test (count $argv) -le 1
      command fasd "$argv"
    else
      set -l ret (command fasd -e 'printf %s' $argv)
      test -z "$ret"; and return
      test -d "$ret"; and cd "$ret"; or printf "%s\n" $ret
    end
  end

  alias a  'fasd -a'        # any
  alias s  'fasd -si'       # show / search / select
  alias d  'fasd -d'        # directory
  alias f  'fasd -f'        # file
  alias sd 'fasd -sid'      # interactive directory selection
  alias sf 'fasd -sif'      # interactive file selection
  alias z  'fasd_cd -d'     # cd, same functionality as j in autojump
  alias zz 'fasd_cd -d -i'  # cd with interactive selection
  alias v  'f -e vim'

  if test -x (command -v xdg-open)
    alias o 'a -e xdg-open'
  else
    alias o 'a -e open'
  end
end
