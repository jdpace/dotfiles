export PATH=~/.etc/bin:$PATH
export CDPATH=.:~/Dev/projects:~/Dev/github

source ~/.etc/bash/boxen.sh
source ~/.etc/bash/aliases.sh
source ~/.etc/bash/autocomplete.sh
source ~/.etc/bash/functions.sh
source ~/.etc/bash/git.sh
source ~/.etc/bash/git-autocomplete.sh
source ~/.etc/bash/heroku.sh
source ~/.etc/bash/homebrew.sh
source ~/.etc/bash/ruby.sh
source ~/.etc/bash/ssh-autocomplete.sh
source ~/.etc/bash/powerline.sh
source ~/.etc/bash/truecrypt.sh
source ~/.etc/bash/vim.sh

cat ~/.octocat
(curl https://api.github.com/octocat > ~/.octocat &) 2> /dev/null
