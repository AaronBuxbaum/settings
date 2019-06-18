# Install iTerm2
brew cask install iterm2

# Install zsh (for shell)
brew install zsh zsh-completions
chsh -s /bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Install PyEnv Virtualenv
# TODO

# Copy into your filesystem
yes | cp -R files/. ~/
yes | cp -R color-scheme/solarized/vim-colors-solarized/colors/. ~/.vim/colors/
yes | cp plugins.vim ~/.vim/plugins.vim

# Add local environment variables
# TODO: add .env
