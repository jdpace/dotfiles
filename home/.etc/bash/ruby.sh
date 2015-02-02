# RBENV
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
alias rb=rbenv
complete -F _rbenv rb

## Aliases
# Rails Stuff
alias td="tail -f log/development.log"
alias be="bundle exec"
alias bi="bundle install"
alias rc="rails console"
alias rs="rails server"
alias rg="rails generate"
alias rdm='rake db:migrate'
alias rdtp='rake db:test:prepare'
