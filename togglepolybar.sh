#!/bin/bash

# if ! pgrep -x "polybar" > /dev/null
# then
#     $HOME/.config/bspwm/launch_ewmh.sh
# else
#     killall "polybar"
# fi

# polybar-msg cmd toggle && bspc config bottom_padding 0

pgrep -x polybar > /dev/null || $HOME/.config/bspwm/launch_ewmh.sh

case "$1" in
  hide) polybar-msg cmd hide | bspc config bottom_padding 0 ;;
  show) polybar-msg cmd show | bspc config bottom_padding 21 ;;
esac
