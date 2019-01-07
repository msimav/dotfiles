#!/bin/sh

case "$(uname -o)" in
Darwin)
  export INSTALL_CMD="brew install stow"
  export KITTY="$HOME/Library/Preferences/kitty"
  export SUBLIME="$HOME/Library/Application Support/Sublime Text 3/Packages"
  export VSCODE="$HOME/Library/Application Support/Code/User"
  ;;
GNU/Linux)
  . /etc/os-release
  export KITTY="$HOME/.config/kitty"
  export SUBLIME="$HOME/.config/sublime-text-3/Packages"
  export VSCODE="$HOME/.config/code/User"
  case $NAME in
    NixOS)
      export INSTALL_CMD="nix-env -i stow"
      ;;
    Ubuntu)
      export INSTALL_CMD="sudo apt-get install stow"
      ;;
    Arch*)
      export INSTALL_CMD="sudo pacman -S stow"
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

if ! [ -x "$(command -v stow)" ]; then
  echo "Installing stow via: $INSTALL_CMD"
  sh -c "$INSTALL_CMD"
fi

set -x
stow -t ~ git
stow -t ~ sbt
stow -t ~ tmux
stow -t ~ zsh
stow -t ~/.config/nvim nvim
stow -t ~/.config/fish fish
mkdir -p "$KITTY" && stow -t "$KITTY" kitty
test -d "$SUBLIME" && stow -t "$SUBLIME" sublime
test -d "$VSCODE" && stow -t "$VSCODE" vscode
