# https://github.com/milkbikis/powerline-bash
if [ -f ~/.etc/vendor/powerline-bash/powerline-bash.py ]; then
  function _update_ps1()
  {
     export PS1="$(~/.etc/vendor/powerline-bash/powerline-bash.py $?)"
  }

  export PROMPT_COMMAND="_update_ps1"
fi


# PLATFORM is needed by tmux-powerline
if [ -z "$(uname -a | grep Darwin)" ]; then
  export PLATFORM=linux
else
  export PLATFORM=mac
fi
