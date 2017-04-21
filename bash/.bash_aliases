# public aliases

ls --color=auto > /dev/null 2>&1
if [ "$?" == "1" ]; then
  # for BSD
  export LS_OPTIONS='-G'
  export LSCOLORS="Gxfxcxdxbxegedabagacad"
else
  # for Linux
  export LS_OPTIONS='--color=auto'
  export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
fi

alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -la'
alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias rehash='source ~/.bash_profile'
alias screen='screen -U'
function findword {
		find . -type f -exec grep -H "$1" {} \;
}
alias findword='findword'

