umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

export PATH=$PATH
export TERM=linux

# include local .bash_profile if it exists
if [ -f ~/.bash_profile.local ]; then
    source ~/.bash_profile.local
fi

case $TERM in
xterm|linux*)
	stty -ixon
	;;
*)
	;;
esac
