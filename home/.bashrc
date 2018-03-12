export PATH=~/.etc/bin:$PATH
# CDPATH may cause issues with some github/github scripts
#  e.g. root=$(cd '..' && pwd)
# export CDPATH=.:~/Dev/projects:~/Dev/github

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

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,vendor}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH=./bin:$PATH

# cat ~/.octocat
# (curl https://api.github.com/octocat > ~/.octocat &) 2> /dev/null
