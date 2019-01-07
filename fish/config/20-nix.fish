if command -v nix-env >/dev/null ^/dev/null
  alias nix-search "nix-env -qasP --description"
end
