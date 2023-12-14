
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/Users/ravi.merugu/Library/Python/3.11/bin"

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(
  git
  bundler
  dotenv
  macos
  pipenv
  pip
)
source $ZSH/oh-my-zsh.sh
