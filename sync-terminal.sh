# Copy everything into the filesystem
yes | cp -R files/. ~/
yes | cp -R color-scheme/solarized/vim-colors-solarized/colors/. ~/.vim/colors/

# Copy local environment variables
test -e .env && yes | cp .env ~/.env.local

echo "Files copied successfully"
