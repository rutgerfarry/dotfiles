# Open tmux on login
if [ -n "$TMUX" ]; then tmux; fi

export ZSH=~/.oh-my-zsh

ZSH_THEME="ys"

plugins=(cp git node pip python docker kubectl)

source $ZSH/oh-my-zsh.sh

############################## User configuration ##############################

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Default user
export DEFAULT_USER=$(whoami)

############################## Path configuration ##############################

# nvm init
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# chruby init
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# Add LaTeX resources from MacTex installation to PATH
export PATH="/Library/TeX/texbin:$PATH"
