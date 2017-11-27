#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
  printf "Installing stow via: "
  case "$(uname -o)" in
  Darwin)
    printf "brew install stow\n"
    brew install stow
    ;;
  GNU/Linux)
    . /etc/os-release
    case $NAME in
      NixOS)
        printf "nix-env -i stow\n"
        nix-env -i stow
        ;;
      Ubuntu)
        printf "apt-get install stow\n"
        sudo apt-get install stow
        ;;
      Arch*)
        printf "pacman -S stow\n"
        sudo pacman -S stow
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
stow -t ~ sbt
stow -t ~ tmux
stow -t ~ vim
stow -t ~ zsh
stow -t ~/.config/nvim nvim

case "$(uname -o)" in
Darwin)
  stow -t "$HOME/Library/Application Support/Sublime Text 3/Packages" sublime
  ;;
GNU/Linux)
  stow -t "$HOME/.config/sublime-text-3/Packages" sublime
  ;;
esac
