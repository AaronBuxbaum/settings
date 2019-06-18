# Install submodules
git submodule update --init --recursive

# Copy everything into the filesystem
yes | cp -R files/. ~/
mkdir -p ~/.vim/colors
yes | cp -R solarized/vim-colors-solarized/colors/. ~/.vim/colors/

# Copy local environment variables
test -e .env && yes | cp .env ~/.env.local

echo "Files copied successfully"
