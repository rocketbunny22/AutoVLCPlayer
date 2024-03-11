import subprocess
import datetime
import time
import os

# Directory paths for color-specific playlists
playlist_directories = {
    'orange': '/home/mthrift/playlists/orange',
    'yellow': '/home/mthrift/playlists/yellow',
    'pink': '/home/mthrift/playlists/pink',
    'purple': '/home/mthrift/playlists/purple'
}

def run_vlc_with_playlist(color):
    # Get the path to the playlist file for the specified color
    playlist_file = os.path.join(playlist_directories[color], f'{color}_playlist.m3u')
    # Execute VLC with the specified playlist
    subprocess.run(['vlc', playlist_file])

def main():
    while True:
        # Get the current week number
        current_week = datetime.datetime.now().isocalendar()[1]
        # Determine which color to use based on the current week
        color_index = (current_week - 1) % len(playlist_directories)
        color = list(playlist_directories.keys())[color_index]
        # Run VLC with the playlist for the determined color
        run_vlc_with_playlist(color)
        # Wait for the end of the week before running the next script
        time.sleep(604800)  # Sleep for 1 week (in seconds)

if __name__ == "__main__":
    main()
