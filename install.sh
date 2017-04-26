#!/bin/bash
# 
# RC Script installation
# 
# install.sh

git pull

echo "Install bash-related configuration..."
\cp bash/.bashrc ~
\cp bash/.bash_aliases ~
\cp bash/.bash_profile ~
if [ ! -f ~/.bash_env ]; then 
    cp bash/.bash_env ~/.bash_env
fi
if [ ! -f ~/.bash_paliases ]; then 
    cp bash/.paliases ~/.bash_paliases
fi
echo "Install git-related configuration..."
\cp git/.git* ~
echo "Install screen-related configuration..."
\cp screen/.screen* ~
echo "Install vim-related configuration..."
\cp vim/.vim* ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo | echo | vim +PluginInstall +qall &>/dev/null
echo "Done."
