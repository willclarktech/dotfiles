$HOME/.vim/install.sh

cat $HOME/.dotfiles/vscode-extensions.txt | xargs -L 1 code --install-extension

brew install \
	coreutils \
	emojify \
	gnupg \
	goenv \
	hub \
	jq \
	python \
	shellcheck \
	tree \
	wget
