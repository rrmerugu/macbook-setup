export HOMEBREW_PREFIX=/opt/homebrew
export PATH=$HOME/Library/Python/3.9/bin:$HOMEBREW_PREFIX/bin:$PATH


export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

ZSH_THEME=amuse