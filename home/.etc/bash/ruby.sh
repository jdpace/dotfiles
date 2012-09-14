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
alias rc="./script/rails console"
alias rs="./script/rails server"
alias rg="./script/rails generate"
alias rdm='rake db:migrate'
alias rdtp='rake db:test:prepare'
