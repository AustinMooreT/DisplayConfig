xrandr --output eDP1 --off --output HDMI3 --primary --auto --dpi 110
xrdb /home/maurice/.XresourceLowDpi
mv /home/maurice/.config/i3/config /home/maurice/.config/i3/configLaptop
mv /home/maurice/.config/i3/configDesktop /home/maurice/.config/i3/config
mv /home/maurice/.config/twmn/twmn.conf /home/maurice/.config/twmn/twmnLaptop.conf
mv /home/maurice/.config/twmn/twmnDesktp.conf /home/maurice/.config/twmn/twmn.conf
i3-msg restart
feh --bg-scale /home/maurice/Pictures/potentialPape6.jpg
/home/maurice/Scripts/./polybarDesktop.sh
twmnd &
