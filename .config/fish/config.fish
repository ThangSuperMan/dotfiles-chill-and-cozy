set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

# fish_add_path /opt/homebrew/bin
fish_add_path /usr/bin/fish

alias p "cd Projects/"
alias n "cd notes/"
alias v "nvim"
alias tks "tmux kill-server"
alias c "clear"

alias tn "tmux new -s (pwd | sed 's/.*\///g')"
alias ta "tmux attach"
alias nc "nc -z -vv"

# Docker
alias dco="docker-compose"
alias de="docker exec"
alias dr="docker run"
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"

# alias ide "tmux split-window -v -p 30 && tmux split-window -h -p 64 && tmux split-window -h -p 50"
#alias ide "tmux split-window -v -p 24 && tmux split-window -h -p 64 && tmux split-window -h -p 50"
# Simple ide
#alias ide1 "tmux split-window -v -p 24 "
alias d "cd Developments"
alias e "exit"

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# Mysql
# set -x PATH ${PATH}:/usr/local/mysql-8.0.31-macos12-arm64/bin
set -x PATH usr/local/mysql-8.0.31-macos12-arm64/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

starship init fish | source
