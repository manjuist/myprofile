#system="$(uname -s)"
#username="$(whoami)"

export LANG=en_US.UTF-8
export HOMEBREW_NO_AUTO_UPDATE=true

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/dewei.ma/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/dewei.ma/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh

plugins=(git brew gulp man npm osx tmux python sudo yarn)
# zsh {
    export ZSH=$HOME/.oh-my-zsh
    export UPDATE_ZSH_DAYS=26
    export ZSH_THEME="avit"

    source $ZSH/oh-my-zsh.sh
    [ -f ~/.zshrc.alias ] && source ~/.zshrc.alias
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# }

# nvm {
    export NVM_DIR="$HOME/.nvm"
    export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/

    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # place this after nvm initialization!
    autoload -U add-zsh-hook
    load-nvmrc() {
      local node_version="$(nvm version)"
      local nvmrc_path="$(nvm_find_nvmrc)"

      if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
          nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
          nvm use
        fi
      elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
      fi
    }
    add-zsh-hook chpwd load-nvmrc
    load-nvmrc
# }
