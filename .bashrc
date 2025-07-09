alias battery="cat /sys/class/power_supply/BAT1/capacity | tr -d '\n'; echo -n '% '; cat /sys/class/power_supply/BAT1/status"
alias pacman="sudo pacman"

case $- in
    *i*) ;; 
      *) return ;;
esac

export TERMINAL=$(which gnome-terminal)

alias startx="labwc -s \"sh -c 'wl-clip-persist --clipboard regular & /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & kanshi & swaybg -i wallpapers/b-926.jpg >/dev/null 2>&1 & firefox'\""

if [[ "$(tty)" == "/dev/tty1" && $HOSTNAME == "muis" ]]; then
    FLAG_FILE="/tmp/.tty1_login_ran"

    if [ ! -f "$FLAG_FILE" ]; then
        touch "$FLAG_FILE"
        startx > /dev/null 2>&1
        exit
    fi
fi