if command -v nix-env >/dev/null 2>&1; then
  alias nix-search="nix-env -qasP --description"
fi
