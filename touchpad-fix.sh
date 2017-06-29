#!/usr/bin/bash

# enhance trackpad experience
install 'xf86-input-synaptics'

echo 'Section "InputClass"
        Identifier "touchpad"
        Driver "synaptics"
        MatchIsTouchpad "on"
        Option "FingerHigh" "5"
        Option "FingerLow" "5"
        Option "TapButton1" "1"
        Option "TapButton2" "3"
        Option "TapButton3" "2"
        Option "HorizTwoFingerScroll" "on"
        Option "VertTwoFingerScroll" "on"
EndSection' > /etc/X11/xorg.conf.d/70-synaptics.conf
