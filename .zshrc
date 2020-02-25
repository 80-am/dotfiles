# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

setopt autonamedirs

# PATH
export PATH=$PATH:/home/adam/.gem/ruby/2.6.0/bin

source $HOME/.aliases
