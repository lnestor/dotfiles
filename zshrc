# If you come from bash you might have to change your $PATH.
export PATH=$home/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/lnestor/.oh-my-zsh
export LOCAL_DEVELOPMENT="true"

source ~/.bash_profile

# Aliases
alias tmux="tmux -2"
alias tmuxa="tmux attach-session -t"

alias cdcode='cd ~/Documents/code'
alias cdvag='cd ~/vagrant'

alias cdepamotron='cd ~/vagrant/code/epamotron'
alias cdncpdp='cd ~/Documents/cmm/ncpdp_epa'
alias cddashboard='cd ~/vagrant/code/dashboard'

alias vimrc='vim ~/.vim/vimrc'
alias zshrc='vim ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'
alias zsource='source ~/.zshrc'

alias be='bundle exec'
alias ber='bundle exec rspec'
alias bes='bundle exec rails server'
alias bec='bundle exec rails console'
alias beru='bundle exc rubocop'

alias v='vim'
alias vi='vim'

alias myip='ifconfig | grep "inet " | grep -v 127.0.0.1'

alias grf='grep -rnw "./" -e'

# Functions
cdc() {
  if [[ -d $HOME/vagrant/code/$1 ]]; then
    cd $HOME/vagrant/code/$1
  else
    cd $HOME/Documents/code/$1
  fi
}

vssh() {
  cd $HOME/vagrant
  if [[ `vagrant status | grep -o running` == "running" ]]; then
    vagrant ssh
  else
    vagrant up
    vagrant ssh
  fi
  popd
}

pbm1() {
  if [ "$1" = "-d" ]; then
    ssh deployer@mitpbm1n2.cmmint.net
  else
    ssh mitpbm1n2.cmmint.net
  fi
}

epa1() {
  if [ "$1" = "-d" ]; then
    ssh deployer@mitepa1n1.cmmint.net
  else
    ssh mitepa1n1.cmmint.net
  fi
}

epa2() {
  if [ "$1" = "-d" ]; then
    ssh deployer@mitepa2n1.cmmint.net
  else
    ssh mitepa2n1.cmmint.net
  fi
}

rnc() {
  mkdir app/components/$1
  cp ~/.oh-my-zsh/base_files/rn_component.js app/components/$1/$1.js
  cp ~/.oh-my-zsh/base_files/rn_styles.js app/components/$1/styles.js
  cp ~/.oh-my-zsh/base_files/index.js app/components/$1/index.js

  sed -i '' "s/Test/$1/g" app/components/$1/$1.js
  sed -i '' "s/Test/$1/g" app/components/$1/index.js
}

vmd() {
  pandoc $1 | lynx -stdin
}

ff() {
  grep -rnw $1 -e $2
}

mcd() {
  mkdir $1 && cd $1
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="gallois"
TERM=xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # git
  vi-mode
)

source $ZSH/git-alias.zsh
source $ZSH/oh-my-zsh.sh
