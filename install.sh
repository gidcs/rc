#!/bin/bash
# 
# RC Script installation
# 
# install.sh

echo "Install bash-related configuration..."
\cp bash/.bash* ~
echo "Install git-related configuration..."
\cp git/.git* ~
echo "Install screen-related configuration..."
\cp screen/.screen* ~
echo "Install vim-related configuration..."
\cp vim/.vim* ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo | echo | vim +PluginInstall +qall &>/dev/null
echo "Done."