#!/usr/bin/env bash

# The powerline root directory.
powerline=~/.etc/vendor/tmux-powerline

if [ ! -d $powerline ]; then
  echo -n "tmux-powerline not found"
  exit 1
fi

# Source global configurations.
source "${powerline}/config.sh"

# Source lib functions.
source "${powerline}/lib.sh"

segments_path="${powerline}/${segments_dir}"
