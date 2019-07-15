# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Percy
# export PERCY_PARALLEL_NONCE=`date`
# export PERCY_PARALLEL_TOTAL=`ls ~/work/web/sites/front-end/test/integration/features | grep -v .todo.feature | wc -l`

# VIM
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Python
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# PyEnv and Pyenv Virtualenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="oxide"
plugins=(
  docker
  docker-compose
  git
  kubectl
  nvm
  osx
  postgres
  pyenv
  python
  virtualenv
  yarn
)
source $ZSH/oh-my-zsh.sh

# Testing alias
alias test-vars="set -a && . ./variables-test.env && set +a"

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Local environment variables
test -e "${HOME}/.env.local" && source "${HOME}/.env.local"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
