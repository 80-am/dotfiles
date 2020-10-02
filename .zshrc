# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

plugins=(
	git
 	osx
)

source $ZSH/oh-my-zsh.sh

#setopt autonamedirs
DISABLE_UNTRACKED_FILES_DIRTY="true"

# PATH
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
export WILDFLY_HOME=/usr/local/Cellar/wildfly@9.0.2/9.0.2.Final/libexec/
source $HOME/.aliases

if [[ -a $HOME/.aliases_work ]]; then
	source $HOME/.aliases_work
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/adaber/.sdkman"
[[ -s "/Users/adaber/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/adaber/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/bison/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
