# https://github.com/milkbikis/powerline-bash
if [ -f ~/.etc/vendor/powerline-bash/powerline-bash.py ]; then
  function _update_ps1()
  {
     export PS1="$(~/Dev/etc/powerline-bash/powerline-bash.py $?)"
  }

  export PROMPT_COMMAND="_update_ps1"
fi
