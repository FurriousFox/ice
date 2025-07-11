# (r)ice

uhhh, yea, some stuff, tiling happened to not really be my thing, so labwc it is ig

# screenshots

tbd

# installation (arch)

```sh
pacman -S kanshi labwc xorg-xhost xorg-xwayland swaybg xdg-desktop-portal-gtk adwaita-qt polkit-gnome wl-clip-persist rofi-wayland swaylock wlr-randr brightnessctl alsa-utils
paru -S swaylock-fancy-git
```

# todo

labwc (openbox?) config:
- lock (shortcut to `swaylock-fancy`) (oh, and lock on screen close / sleep / that stuff)
- other generic window management shortcuts
- ctrl+alt+t terminal
- brightness control

other stuff:
- app launcher (+shortcut) (rofi-wayland `rofi -show drun`?)
- notifications
- clipboard manager (history?)
- status bar (time, battery, wifi, notifications, workspace indicator, bluetooth, brightness, volume)
- pipewire
- gnome (like?) popups aren't dark mode
- start alacritty fullscreen

# accidental PR(s) to make stuff work
[Support any WM implementing the wlr-output-management protocol #10](https://github.com/Big-B/swaylock-fancy/pull/10)
