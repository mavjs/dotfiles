# About
This repository contains configuration files that I use on all my computers.

## Contains
* buildout - default buildout configuration file
* dwm - dwm window manager config file (not sure what I changed here)
* i3 - i3 window manager config file (not sure what I changed here either)
* misc - miscellaneous configurations
* [gef](https://github.com/hugsy/gef) - GDB Enhanced Features for exploit devs & reverse engineers
* peda - python exploit development assistance for GDB
* vim - vimrc and various extensions
* [neovim](https://neovim.io/) - neovim config file
* zsh - zshrc and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), 'cause it's OH-SM!!! \o/

## Notes
* Added various configurations from [sontek.net](http://sontek.net/turning-vim-into-a-modern-python-ide).
* [Note] Included vim plugins I used. For better understanding of my .vimrc have a look at [this](https://github.com/psquid/dotfiles) & [that](http://nvie.com/posts/how-i-boosted-my-vim/).

# Usage
Make sure you've [git](http://git-scm.com/) installed.

Then clone the repo like this

    git clone --recursive git@github.com:mavjs/dotfiles.git

or on older versions of git

    git clone git@github.com:mavjs/dotfiles.git

    cd dotfiles

    git submodule update --init

[optional] Update git submodules to latest master

    git submodule foreach git pull origin master

# Installing
Please make sure you have some of the following tools installed:
* [brew](http://brew.sh/) (macOS)
* [macvim](https://code.google.com/p/macvim/) or [neovim](https://neovim.io/) (macOS)
* [GNU Stow](https://www.gnu.org/software/stow/) ([used to install the config files in the respective places in $HOME](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/))

Example of installing .vim and .vimrc to correct places (inside the dotfiles folder):

    stow vim

.vim and .vimrc will be installed correctly to ```~/.vim``` and ```~/.vimrc```

### Mac OSX specifics
If you want to use vim version greater than what macOS provides:

    brew install macvim --override-system-vim

Or if you prefer, install neovim:

    brew install neovim

### Fedora/RHEL-based

    [sudo] dnf install ruby-devel

### All platforms

    cd dotfiles/vim/.vim/bundle/ropevim

    [sudo] python setup.py install

    [sudo] gem install pygments.rb redcarpet

    [sudo] npm install -g jshint jsonlint js-yaml instant-markdown-d

    cd dotfiles/vim/.vim/bundle/tern_for_vim

    npm install
