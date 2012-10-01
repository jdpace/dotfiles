if [ -f $HOME/.ssh/known_hosts ]; then
  SSH_KNOWN_HOSTS=( $(cat ~/.ssh/known_hosts | \
    cut -f 1 -d ' ' | \
    sed -e s/,.*//g | \
    uniq | \
    egrep -v [0123456789]) )
else
  SSH_KNOWN_HOSTS=()
fi

if [ -f $HOME/.ssh/config ]; then
  SSH_CONFIG_HOSTS=( $(cat ~/.ssh/config | grep "Host " | grep -v "*" | cut -f 2 -d ' ') )
else
  SSH_CONFIG_HOSTS=()
fi

complete -o default -W "${SSH_KNOWN_HOSTS[*]} ${SSH_CONFIG_HOSTS[*]}" ssh
