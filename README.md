About
=====
This repo is for all my $dotfiles.

Contains
========
* buildout - default buildout configuration file
* dwm - dwm window manager config file (not sure what I changed here)
* i3 - i3 window manager config file (not sure what I changed here either)
* misc - miscellaneous configurations
* peda - python exploit development assistance for GDB
* vim - vimrc and various extensions
* zsh - zshrc and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), 'cause it's OH-SM!!! \o/

Notes
=====
* Added various configurations from [sontek.net](http://sontek.net/turning-vim-into-a-modern-python-ide).
* [Note] Included vim plugins I used. For better understanding of my .vimrc have a look at [this](https://github.com/psquid/dotfiles) & [that](http://nvie.com/posts/how-i-boosted-my-vim/).

Usage
=====
Make sure you've [git](http://git-scm.com/) installed.


Then clone the repo like this

    % git clone --recursive git@github.com:mavjs/dotfiles.git

or on older versions of git
    
    % git clone git@github.com:mavjs/dotfiles.git
    % cd dotfiles
    % git submodule update --init

Things to do after installing
-----------------------------
Please make sure you have [nodejs](http://nodejs.org/) which have npm, [brew](http://brew.sh/) if you're on Mac OSX, and for less headaches, install [macvim](https://code.google.com/p/macvim/)    
    
    brew install macvim --override-system-vim
    
    brew install v8
    
    sudo npm install -g jshint jsonlint js-yaml
    
    cd dotfiles/vim/.vim/bundle/tern_for_vim
    
    npm install
