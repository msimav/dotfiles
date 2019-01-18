# https://gist.github.com/brandonpittman/83255c797dee1fb38fb8bcbe984ab1aa

set -l COMMENT 6272a4
set -l CYAN 8be9fd
set -l GREEN 50fa7b
set -l ORANGE ffb86c
set -l PINK ff79c6
set -l PURPLE bd93f9
set -l RED ff5555
set -l YELLOW f1fa8c

set -U fish_color_autosuggestion $COMMENT
set -U fish_color_command $PINK
set -U fish_color_comment $COMMENT
set -U fish_color_cwd $CYAN
set -U fish_color_cwd_root $RED
set -U fish_color_end normal
set -U fish_color_error $RED
set -U fish_color_escape $CYAN
set -U fish_color_history_current $CYAN
set -U fish_color_host normal
set -U fish_color_match $GREEN
set -U fish_color_normal normal
set -U fish_color_operator $CYAN
set -U fish_color_param normal
set -U fish_color_quote $YELLOW
set -U fish_color_redirection $PURPLE
set -U fish_color_search_match \x2d\x2dbackground\x3d$PURPLE
set -U fish_color_selection \x2d\x2dbackground\x3d$PURPLE
set -U fish_color_user $PURPLE
set -U fish_color_valid_path \x2d\x2dunderline
