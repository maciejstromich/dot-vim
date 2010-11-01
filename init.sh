#1/bin/sh

ln -sv ~/.vim/vimrc ~/.vimrc
ln -sv ~/.vim/gvimrc ~/.gvimrc

# install bundles
cd ~/.vim
git submodule init
git submodule update

