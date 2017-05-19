xrandr --output eDP1 --primary --auto --dpi 220 --output HDMI3 --off
cp XresourcesDisconnected $HOME/.Xresources
xrdb $HOME/.Xresources
cp i3ConfigDisconnected $HOME/.config/i3/config
i3-msg restart
cp twmn.conf $HOME/.config/twmn/twmn.conf
killall -q twmnd
twmnd &
feh --bg-scale background
/home/maurice/Scripts/./polybarLaptop.sh
twmnd &
