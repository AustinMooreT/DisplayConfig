#!/bin/bash

DATE=$(date)
STATE_FILE=$HOME/.config/Monitor/state
LOG_FILE=$HOME/.config/Monitor/log
STATE=$(cat $STATE_FILE)


if [ $STATE == "Disconnected" ]; then
   WORKING_DIR=$HOME/.config/Monitor/States/Connected
   echo "Connected" > $STATE_FILE
   echo "$DATE Connected" >> $LOG_FILE
   xrandr --output HDMI3 --primary --auto --dpi 110 --output eDP1 --off

elif [ $STATE == "Connected" ]; then
     WORKING_DIR=$HOME/.config/Monitor/States/Disconnected
     echo "Disconnected" > $STATE_FILE
     echo "$DATE Disconnected" >> $LOG_FILE
     xrandr --output eDP1 --primary --auto --dpi 220 --output HDMI3 --off

else
    echo "$DATE Failure" >> $LOG_FILE
    exit
fi

#overwrites Xresource file then reappends it using xrdb
cp $WORKING_DIR/Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

#overwrites i3 file then restarts i3
cp $WORKING_DIR/i3 $HOME/.config/i3/config
i3-msg restart

#overwrites twmn config then restarts it.
cp $WORKING_DIR/twmn $HOME/.config/twmn/twmn.conf
killall -q twmnd
twmnd &

#resets the background
feh --bg-scale $WORKING_DIR/background

#overwrites existing polybar configuration for Connected state
cp $WORKING_DIR/polybar $HOME/.config/polybar/config
killall -q polybar
polybar top &
polybar bottom &

echo "$DATE Finished execution." >> $LOG_FILE
