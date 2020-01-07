$HOME/.vim/install.sh

cat $HOME/.dotfiles/vscode-extensions.txt | xargs -L 1 code --install-extension

cd $HOME/.dotfiles
brew bundle

