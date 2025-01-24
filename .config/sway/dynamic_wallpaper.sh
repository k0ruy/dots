#!/bin/sh

#isServerExist=`ps -ef|grep -m 1 swaybg|grep -v "grep"|wc -l`
#if [ "$isServerExist" = "0" ]; then
#	echo "my_server not found"
#elif [ "$isServerExist" = "1" ]; then
#  killall swaybg
#fi

# Automatically change wallpaper every 10 minutes
#swaybg -i $(find /home/ko4/.config/sway/wallpaper/. -name "*.*" | shuf -n1) -m fill &

#OLD_PID=$!
#while true; do
#    sleep 580
#    swaybg -i $(find /home/ko4/.config/sway/wallpaper/. -name "*.*" | shuf -n1) -m fill &
#    NEXT_PID=$!
#    sleep 5
#    kill $OLD_PID
#    OLD_PID=$NEXT_PID
#done


# Change wallpaper every 10 minutes
while true; do
    # Set a random wallpaper from the specified directory
    swaybg -i $(find /home/ko4/.config/sway/wallpaper/. -name "*.*" | shuf -n1) -m fill &
    
    # Sleep for 10 minutes (600 seconds)
    sleep 600
done

