xrandr --output eDP1 --primary --auto --dpi 220 --output HDMI3 --off
xrdb /home/maurice/.Xresources
mv /home/maurice/.config/i3/config /home/maurice/.config/i3/configDesktop
mv /home/maurice/.config/i3/configLaptop /home/maurice/.config/i3/config
mv /home/maurice/.config/twmn/twmn.conf /home/maurice/.config/twmn/twmnDesktop.conf
mv /home/maurice/.config/twmn/twmnLaptop.conf /home/maurice/.config/twmn/twmn.conf
i3-msg restart
feh --bg-scale /home/maurice/Pictures/potentialPape6.jpg
/home/maurice/Scripts/./polybarLaptop.sh
twmnd &
