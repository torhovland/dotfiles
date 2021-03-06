#!/bin/bash
case $(wofi -d -L 6 -l 3 -W 100 -x -100 -y 10 \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Sleep
    Hibernate
    Lock
    Cancel
EOF
) in
    "Shutdown")
        shutdown
        ;;
    "Reboot")
        reboot
        ;;
    "Sleep")
        systemctl suspend -i
        ;;
    "Hibernate")
        systemctl hibernate -i
        ;;
    "Hibernate")
        systemctl hibernate
        ;;
    "Lock")
        loginctl lock-session
        ;;
    "Log off")
        swaymsg exit
        ;;
esac
