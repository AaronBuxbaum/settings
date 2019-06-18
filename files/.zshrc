# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Percy
export PERCY_PARALLEL_NONCE=`date`
export PERCY_PARALLEL_TOTAL=`ls ~/work/web/sites/front-end/test/integration/features | grep -v .todo.feature | wc -l`

# VIM
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# PyEnv and Pyenv Virtualenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  git
  virtualenv
)
source $ZSH/oh-my-zsh.sh

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Local environment variables
test -e "${HOME}/.env.local" && source "${HOME}/.env.local"
