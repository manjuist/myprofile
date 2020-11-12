system="$(uname -s)"
username="$(whoami)"
hasNvm=$(type nvm > /dev/null 2>&1 && echo "nvm")

export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=26
export LANG=en_US.UTF-8
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
export NVM_DIR="$HOME/.nvm"

ZSH_THEME="avit"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git brew gulp man npm osx tmux python sudo yarn)

source $ZSH/oh-my-zsh.sh
[ -f ~/.zshrc_alias ] && source ~/.zshrc_alias
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ "$hasNvm" = nvm ]; then
	autoload -U add-zsh-hook
	load-nvmrc() {
	  local node_version="$(nvm version)"
	  local nvmrc_path="$(nvm_find_nvmrc)"

	  if [ -n "$nvmrc_path" ]; then
	    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

	    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
	      nvm use
	    fi
	  elif [ "$node_version" != "$(nvm version default)" ]; then
	    echo "Reverting to nvm default version"
	    nvm use default
	  fi
	}
	add-zsh-hook chpwd load-nvmrc
	load-nvmrc
fi
