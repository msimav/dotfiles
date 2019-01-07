set theme sushi
set -g theme_complete_path yes

if test -d ~/.config/fish/theme-$theme
  for file in ~/.config/fish/theme-$theme/*.fish
    source "$file"
  end
end
