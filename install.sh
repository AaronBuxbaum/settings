# Install iTerm2
brew cask install iterm2

# Install zsh and pyenv
brew install zsh zsh-completions pyenv pyenv-virtualenv

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Set up the terminal
sync-terminal.sh
