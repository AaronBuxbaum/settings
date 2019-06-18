# Pull submodules
git submodule update --init --recursive

# Install iTerm2
brew cask install iterm2
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

# Install zsh and pyenv
brew install zsh zsh-completions pyenv pyenv-virtualenv

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended

# Install Poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Set up the terminal
./sync-terminal.sh

# Install fonts
./fonts/install.sh

# Change default shell
chsh -s $(which zsh)
