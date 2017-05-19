This system is designed to keep track of the monitor state (either "Connected" or "Disconnected")
And update the dpi, fonts, scaling, etc of the applications on my machine.
The Disconnected state will be HighDpi changes with a dpi 220.
The Connected state will be LowDpi changes with a dpi of 110.
On the udev event "" //Add the udev rule here.
The state will be updated to Connected if the monitor is Disconnected or
Disconnected if the monitor is connected.
To update state there are two scripts connected.sh and disconnected.sh
for more details see the Connected README and Disconnected README in their respective state directories.
