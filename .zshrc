export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export GOPATH=$HOME/go
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

setopt autonamedirs
DISABLE_UNTRACKED_FILES_DIRTY="true"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/bison/bin:$PATH"

source $HOME/.aliases
if [[ -a $HOME/.aliases_spec ]]; then
	source $HOME/.aliases_spec
fi

# Created by `pipx` on 2025-05-27 07:37:32
export HOMEBREW_NO_ENV_HINTS=1
export PATH="$PATH:/Users/adam/.local/bin"
