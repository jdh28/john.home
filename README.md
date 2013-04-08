john.home
=========

This is a repository containing my standard bash settings and a Makefile to bootstrap other Linux settings.

Usage
-----

The repository is designed to be checked out into its own directory with symlinks from the home directory. Once checked out:

  ~ $ make install

to setup the bash init scripts, or

  ~ $ make init

to setup the bash init scripts and bootstrap other configuration files (currently just vim).
