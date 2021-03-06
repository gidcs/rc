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
    cp bash/.bash_paliases ~/.bash_paliases
fi
echo "Install git-related configuration..."
\cp git/.git* ~
echo "Install screen-related configuration..."
\cp screen/.screen* ~
echo "Install vim-related configuration..."
\cp vim/.vim* ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/bundle/Vundle.vim
git pull
cd -
echo "Install tmux-related configuration..."
\cp tmux/.tmux* ~
echo | echo | vim +PluginInstall +qall &>/dev/null
echo "Done."
