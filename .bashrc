alias battery="cat /sys/class/power_supply/BAT1/capacity | tr -d '\n'; echo -n '% '; cat /sys/class/power_supply/BAT1/status"
alias pacman="sudo pacman"

case $- in
    *i*) ;; 
      *) return ;;
esac

alias startx="labwc -s \"sh -c 'firefox'\""
if [ "$XDG_VTNR" = "1" ] && [ -z "$DISPLAY" ] && [ $HOSTNAME == "muis" ]; then
    startx > /dev/null 2>&1
    exit
fi
