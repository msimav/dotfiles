if test -d ~/.config/fish/config
  for file in ~/.config/fish/config/*.fish
    source "$file"
  end
end
