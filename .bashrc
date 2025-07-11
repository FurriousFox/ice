alias battery="cat /sys/class/power_supply/BAT1/capacity | tr -d '\n'; echo -n '% '; cat /sys/class/power_supply/BAT1/status"
alias pacman="sudo pacman"

case $- in
    *i*) ;; 
      *) return ;;
esac

export TERMINAL=$(which gnome-terminal)

xhost +SI:localuser:root >/dev/null 2>&1

alias startx="labwc -s \"sh -c 'wl-clip-persist --clipboard regular & /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & kanshi & swaybg -i wallpapers/b-926.jpg >/dev/null 2>&1 & firefox'\""
if [ "$XDG_VTNR" = "1" ] && [ -z "$DISPLAY" ] && [ $HOSTNAME == "muis" ]; then
    startx > /dev/null 2>&1
    exit
fi
