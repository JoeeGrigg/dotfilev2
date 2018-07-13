# Joe Grigg's .bash_profile / .bashrc

########################################################################################################################
# Core Config
########################################################################################################################

# Base Path
export PATH="~/bin:/usr/local/bin:$PATH"

# Terminal Colours
export TERM=xterm-256color

# Default Editor
export EDITOR="vim"

# History Size
HISTSIZE=10000
HISTFILESIZE=10000

# Disable ctrl-s from freezing terminal on Linux
stty -ixon

########################################################################################################################
# Styles
########################################################################################################################

# Get git branch for cursor
get_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# Custom Cursor
export PS1="\[$(tput setaf 1)\][\W]\[$(tput setaf 6)\]\$(get_git_branch)→ \[$(tput sgr0)\]"

########################################################################################################################
# Functions
########################################################################################################################

# Make dir & cd in
mkcdir(){ mkdir -p -- "$1" && cd -P -- "$1"; }

# Join tmux session
# Param 1: Session to join
# Param 2: New Session Name
tjoin() {
  tmux new-session -t "$1" -s "$2"
}

########################################################################################################################
# General Aliases
########################################################################################################################

alias ls="ls -a1G"
alias open="nautilus"
#alias aws="sudo docker run --rm -t -i fstab/aws-cli"
alias pbcopy="xclip -selection c" # Mac style copy in terminal (Linux Only)
alias pbpaste="xclip -selection clipboard -o" # Mac style paste from clipboard (Linux Only)
alias be="bundle exec"

########################################################################################################################
# Software Configuration
########################################################################################################################

# Setup rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR="/home/RRADAR/joseph.grigg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Linux Brew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# Terraform
export PATH="~/terraform/:$PATH"
