# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian history pyenv rbenv pip python sbt scala sublime sudo tmux vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.profile

# automatically do a pushd of each cd in a directory
setopt auto_pushd

# pyenv and rbenv
eval "$(pyenv init -)"
eval "$(rbenv init -)"

##### TURENG #####
_tureng() {
	local a
	read -cA a
	reply=($(grep '^'$a[-1] <<<"$(aspell -l en dump master)" <<<"$(aspell -l tr dump master)"))
}

compctl -K _tureng tureng
##### TURENG #####

# Customize to your needs...
export EDITOR="vim"
export VISUAL="subl"
export TERM="xterm-256color"

alias ls="ls --color=auto --group-directories-first -h"
alias grep='grep --color=auto'
alias df="df -h"
alias du="du -ch"
alias diff="colordiff -u"
alias less="less -R"
alias cpclib="xsel -ipb"
alias curl="curl --silent"
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s'"

vid2mp3() { ffmpeg -i $1 -f mp3 -vn "$1.mp3" }
fliptable() { echo "（╯°□°）╯︵ ┻━┻"; }
start-x11vnc() { ssh -t -L 5900:localhost:5900 $1 'x11vnc -localhost -display :0'; }
