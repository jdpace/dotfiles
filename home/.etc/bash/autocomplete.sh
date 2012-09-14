if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
  complete -o default -o nospace -F _git g
else
  echo "bash_autocompletion not found. Try 'brew install bash_completion'."
fi
