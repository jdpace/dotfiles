#!/usr/bin/env bash

source "$(dirname $0)/powerline.sh"

# Segments
declare -A pwd
pwd+=(["script"]="${segments_path}/pwd.sh")
pwd+=(["foreground"]="colour211")
pwd+=(["background"]="colour89")
pwd+=(["separator"]="${separator_left_bold}")
#register_segment "pwd"

declare -A mail_count
mail_count+=(["script"]="${segments_path}/maildir_count.sh")
#mail_count+=(["script"]="${segments_path}/apple_mail_count.sh")
mail_count+=(["foreground"]="white")
mail_count+=(["background"]="red")
mail_count+=(["separator"]="${separator_left_bold}")
#register_segment "mail_count"

declare -A cpu
cpu+=(["script"]="${segments_path}/cpu.sh")
cpu+=(["foreground"]="colour136")
cpu+=(["background"]="colour240")
cpu+=(["separator"]="${separator_left_bold}")
#register_segment "cpu"

declare -A load
load+=(["script"]="${segments_path}/load.sh")
load+=(["foreground"]="colour167")
load+=(["background"]="colour237")
load+=(["separator"]="${separator_left_bold}")
register_segment "load"

declare -A battery
if [ "$PLATFORM" == "mac" ]; then
	battery+=(["script"]="${segments_path}/battery_mac.sh")
else
	battery+=(["script"]="${segments_path}/battery.sh")
fi
battery+=(["foreground"]="colour127")
battery+=(["background"]="colour137")
battery+=(["separator"]="${separator_left_bold}")
#register_segment "battery"

declare -A weather
weather+=(["script"]="${segments_path}/weather.sh")
weather+=(["foreground"]="colour255")
weather+=(["background"]="colour37")
weather+=(["separator"]="${separator_left_bold}")
#register_segment "weather"

declare -A xkb_layout
if [ "$PLATFORM" == "linux" ]; then
	xkb_layout+=(["script"]="${segments_path}/xkb_layout.sh")
	xkb_layout+=(["foreground"]="colour117")
	xkb_layout+=(["background"]="colour125")
	xkb_layout+=(["separator"]="${separator_left_bold}")
fi
#register_segment "xkb_layout"

declare -A date_day
date_day+=(["script"]="${segments_path}/date_day.sh")
date_day+=(["foreground"]="colour136")
date_day+=(["background"]="colour235")
date_day+=(["separator"]="${separator_left_bold}")
register_segment "date_day"

declare -A date_full
date_full+=(["script"]="${segments_path}/date_full.sh")
date_full+=(["foreground"]="colour136")
date_full+=(["background"]="colour235")
date_full+=(["separator"]="${separator_left_thin}")
date_full+=(["separator_fg"]="default")
register_segment "date_full"

declare -A time
time+=(["script"]="${segments_path}/time.sh")
time+=(["foreground"]="colour136")
time+=(["background"]="colour235")
time+=(["separator"]="${separator_left_thin}")
time+=(["separator_fg"]="default")
register_segment "time"

# Print the status line in the order of registration above.
print_status_line_right

exit 0
