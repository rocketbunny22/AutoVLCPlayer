#!/bin/bash

# Path to the VLC executable
VLC_PATH="/usr/bin/vlc"

# Path to the playlist file
PLAYLIST_FILE="/home/mthrift/MTyellow.m3u"

# Start time in HH:MM format (24-hour clock)
START_TIME="08:30"

# End time in HH:MM format (24-hour clock)
END_TIME="19:00"


    # Check if the current time is between start and end times
    CURRENT_TIME=$(date +%H:%M)
    if [[ "$CURRENT_TIME" > "$START_TIME" && "$CURRENT_TIME" < "$END_TIME" ]]; then
        # Launch VLC with the playlist
        "$VLC_PATH" -f --loop "$PLAYLIST_FILE" &
        # Store the PID of VLC process
        VLC_PID=$!
        # Wait for VLC to finish
        wait $VLC_PID
    else
        echo "Current time is not within the specified range."
   fi
fi

