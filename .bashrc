# ~/.bashrc: executed by bash(1) for non-login shells.

# If running interactively, then:
if [ "$PS1" ]; then

    # don't put duplicate lines in the history. See bash(1) for more options
    # export HISTCONTROL=ignoredups

    # enable color support of ls and also add handy aliases
	export LS_OPTIONS='--color=auto -h'
    eval `dircolors -b`
	alias ls='ls $LS_OPTIONS'
	alias ll='ls $LS_OPTIONS -l'
	alias la='ls $LS_OPTIONS -A'
	alias l='ls $LS_OPTIONS -lA'

    function jobcount {
        c=`jobs | wc -l | tr -d " "`
        if [ $c -gt 0 ]; then
            echo "[$c] "
        fi
    }

    # set a fancy prompt
	if [ `whoami` = "root" ]
	then
		promptcolour='31'
	else
		promptcolour='34'
	fi
	export PS1='\[\e[${promptcolour};1m\]\h:\w `jobcount`\$ \[\e[0m\]'

    # If this is an xterm set the title to user@host:dir
    case $TERM in
    xterm*)
        export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        ;;
    *)
        ;;
    esac

    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc).
    if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi
fi

export EDITOR=/usr/bin/vi
export VISUAL=/usr/bin/vi

# Source local definitions
if [ -f ~/.bashrc.local ]; then
	. ~/.bashrc.local
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

