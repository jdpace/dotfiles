which brew &> /dev/null
if [ $? == 0 ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
    complete -o default -o nospace -F _git g
  else
    echo "bash-autocompletion not found. Try 'brew install bash-completion'."
  fi
fi
