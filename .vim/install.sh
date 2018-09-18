vundle_bundle_path="$HOME/.vim/bundle/Vundle.vim"
[ ! -d $vundle_bundle_path ] && git clone https://github.com/VundleVim/Vundle.vim.git $vundle_bundle_path

vim +PluginInstall +qall
