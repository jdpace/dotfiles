#!/usr/bin/env bash

source "$(dirname $0)/powerline.sh"

# Segments
declare -A tmux_session_info
tmux_session_info+=(["script"]="${segments_path}/tmux_session_info.sh")
tmux_session_info+=(["foreground"]="colour234")
tmux_session_info+=(["background"]="colour148")
tmux_session_info+=(["separator"]="${separator_right_bold}")
register_segment "tmux_session_info"

declare -A hostname
hostname+=(["script"]="${segments_path}/hostname.sh")
hostname+=(["foreground"]="colour0")
hostname+=(["background"]="colour33")
hostname+=(["separator"]="${separator_right_bold}")
register_segment "hostname"

declare -A lan_ip
lan_ip+=(["script"]="${segments_path}/lan_ip.sh")
lan_ip+=(["foreground"]="colour255")
lan_ip+=(["background"]="colour24")
lan_ip+=(["separator"]="${separator_right_bold}")
register_segment "lan_ip"

declare -A wan_ip
wan_ip+=(["script"]="${segments_path}/wan_ip.sh")
wan_ip+=(["foreground"]="colour255")
wan_ip+=(["background"]="colour24")
wan_ip+=(["separator"]="${separator_right_thin}")
wan_ip+=(["separator_fg"]="white")
register_segment "wan_ip"

print_status_line_left

exit 0
