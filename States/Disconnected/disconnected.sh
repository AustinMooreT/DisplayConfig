#sets display information using randr
xrandr --output eDP1 --primary --auto --dpi 220 --output HDMI3 --off

#overwrites existing exresource file in home with Disconnected xresources
cp Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

#overwrites existing i3 config in the .config dir with Disconnected config
cp i3 $HOME/.config/i3/config
i3-msg restart

#overwrites existing twmn confign in .config dir with Disconnected config
cp twmn $HOME/.config/twmn/twmn.conf
killall -q twmnd
twmnd &

#Sets the background for disconnected state
feh --bg-scale background

/home/maurice/Scripts/./polybarLaptop.sh
