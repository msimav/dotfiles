if [ -x "$(command -v fasd)" ]; then
 eval "$(fasd --init posix-alias zsh-hook)"
 alias v='f -e vim'
 if [ -x "$(command -v xdg-open)" ]; then
   alias o='a -e xdg-open'
 else
   alias o='a -e open'
 fi
fi
