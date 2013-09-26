# https://github.com/milkbikis/powerline-shell
if [ -f ~/.etc/bash/powerline-shell.py ]; then
  function _update_ps1()
  {
     export PS1="$(~/.etc/bash/powerline-shell.py $? 2> /dev/null)"
  }

  export PROMPT_COMMAND="_update_ps1"
fi


# PLATFORM is needed by tmux-powerline
if [ -z "$(uname -a | grep Darwin)" ]; then
  export PLATFORM=linux
else
  export PLATFORM=mac
fi
