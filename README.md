Just Some Dotfiles
==================

## What's Included

* Bash creature comforts - aliases, functions, etc
* Janus (Vim) configuration
* Tmux Configuration
* Powerline Config (Bash, Vim, and Tmux)


## Installing

This dotfiles repo is set up to be compatible with the
[Homesick](https://github.com/technicalpickles/homesick) gem.
It takes care of all of the symlinking as well as making sure
the Repo and all of it's dependencies (Git submodules) are
up to date.

    gem install homesick
    homesick clone jdpace/dotfiles
    homesick symlink jdpace/dotfiles
    git clone git://github.com/carlhuda/janus.git $HOME/.vim
    cd $HOME/.vim && rake
