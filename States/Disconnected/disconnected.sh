xrandr --output eDP1 --primary --auto --dpi 220 --output HDMI3 --off
cp XresourcesDisconnected $HOME/.Xresources
xrdb $HOME/.Xresources
cp i3ConfigDisconnected $HOME/.config/i3/config
i3-msg restart
mv /home/maurice/.config/twmn/twmn.conf /home/maurice/.config/twmn/twmnDesktop.conf
mv /home/maurice/.config/twmn/twmnLaptop.conf /home/maurice/.config/twmn/twmn.conf
feh --bg-scale /home/maurice/Pictures/potentialPape6.jpg
/home/maurice/Scripts/./polybarLaptop.sh
twmnd &
