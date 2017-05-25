# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
umask 022
if [[ $- == *i* ]]; then
    export PS1="\[\033[38;5;184m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;220m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n  \[$(tput sgr0)\]\[\033[38;5;39m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

export EDITOR=vim
export VISUAL=vim
export TERM=screen-256color

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
if [ -f ~/.bash_paliases ]; then . ~/.bash_paliases; fi
if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export VIRSH_DEFAULT_CONNECT_URI="qemu:///system"

