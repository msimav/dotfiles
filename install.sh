#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
  printf "Installing stow via: "
  case "$(uname -o)" in
  Darwin)
    printf "brew install stow\n"
    brew install stow
    ;;
  GNU/Linux)
    source /etc/os-release
    case $NAME in
      NixOS)
        printf "nix-env -i stow\n"
        nix-env -i stow
        ;;
      *)
        printf "\rDon't support Distro $NAME\n"
        exit 1
        ;;
    esac
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
stow -t ~ zsh
