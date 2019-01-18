function fish_right_prompt
  set -l cwd

  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else
    set cwd (prompt_pwd)
  end

  set -l ahead    "↑"
  set -l behind   "↓"
  set -l diverged "⥄ "
  set -l dirty    "⨯"
  set -l none     "◦"

  set -l normal_color    (set_color normal)
  set -l directory_color (set_color  bd93f9 --bold)
  set -l error_color     (set_color ff5555 --bold)
  set -l time_color      (set_color 6272a4)


  if git::is_repo
    if git::is_touched
      echo -n -s $error_color $dirty $normal_color " "
    end

    echo -n -s (git::ahead $ahead $behind $diverged $none) " "
  end

  echo -n -s "(" $directory_color $cwd $normal_color ")"
  echo -n -s " " $time_color (date "+%H:%M:%S") $normal_color
end
