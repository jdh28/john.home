VIMDIR := ~/.vim

all:

install:
	ln -sf `pwd`/.bashrc ~/.bashrc
	ln -sf `pwd`/.bash_profile ~/.bash_profile
	ln -s `pwd`/.gitconfig ~/.gitconfig

init: vim install

vim:
	mkdir ${VIMDIR}
	cd ${VIMDIR}; \
		git init; \
		git config --add core.autocrlf input; \
		git remote add origin git@github.com:jdh28/vim-config.git; \
		git pull origin master
	ln -sf ${VIMDIR}/.vimrc ~/.vimrc
	ln -sf ${VIMDIR}/.gvimrc ~/.gvimrc
