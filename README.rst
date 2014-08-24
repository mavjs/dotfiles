About
=====
This repo is for all my $dotfiles.

Contains
========
* Xdefaults (I use it for urxvt)
* zshrc (been using oh-my-zsh lately)
* vimrc 
* config.h (Dwm config file)
* Added various configurations from sontek.net_.
* [Note] Included vim plugins I used. For better understanding of my .vimrc have a look at this_ & that_.

.. _sontek.net: http://sontek.net/turning-vim-into-a-modern-python-ide    
.. _this: https://github.com/psquid/dotfiles 
.. _that: http://nvie.com/posts/how-i-boosted-my-vim/

Usage
=====
Make sure you've git_ installed.

.. _git: http://git-scm.com/

Then clone the repo like this
::
    % git clone --recursive git@github.com:mavjs/dotfiles.git

or on older versions of git
::
    % git clone git@github.com:mavjs/dotfiles.git
    % cd dotfiles
    % git submodule update --init
