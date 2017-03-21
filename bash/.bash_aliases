# You may uncomment the following lines if you want `ls' to be colorized:

# export LS_OPTIONS='--color=auto'
export LS_OPTIONS='-G'
# eval "`dircolors`"
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

