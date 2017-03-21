if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
