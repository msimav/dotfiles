#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
  printf "Installing stow via: "
  case "$(uname -o)" in
  Darwin)
    printf "brew install stow\n"
    brew install stow
    ;;
  *)
    printf "\rDon't support OS $(uname -o)\n"
    exit 1
    ;;
  esac
fi

set -x
stow -t ~ git
stow -t ~ tmux
