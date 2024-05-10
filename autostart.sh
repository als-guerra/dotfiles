#!/usr/bin/env bash
  
# ▬▬▬.◙.▬▬▬
# ═▂▄▄▓▄▄▂
# ◢◤ █▀▀████▄▄▄▄▄▄◢◤
# █▄ █ :) ██▀▀▀▀▀▀▀╬
# ◥█████◤
# ══╩══╩══
#        
# Um bspwmrc personalizado para o gerenciador de janelas bspwm.
# https://github.com/baskerville/sxhkd
# https://github.com/baskerville/bspwm

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#### MONITORS ####
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

#### SET TECLADO ####
keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

if [ $keybLayout = "be" ]; then
  run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc-azerty &
else
  run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
fi

#### SET WALLPAPER ####
bash ~/.fehbg &

xsetroot -cursor_name left_ptr &

#### PICOM ####
pkill picom
picom -b &

#### PROGRAMS ####
run variety &
run nm-applet &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
run caffeine &
run discord &
run plank &
run flameshot &
run ktorrent &

#### POLYBAR ####
$HOME/.config/polybar/launch.sh &
