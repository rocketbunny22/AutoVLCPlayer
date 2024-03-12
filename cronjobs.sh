PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
25 8 * * 1 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 7 * * 1 pkill vlc

25 8 * * 2 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 19 * * 2 pkill vlc

25 8 * * 3 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 19 * * 3 pkill vlc

25 8 * * 4 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 19 * * 4 pkill vlc

25 8 * * 5 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 19 * * 5 pkill vlc

25 8 * * 6 cd /home/mthrift &&  python3  /home/mthrift/AutoVLCmain.py
30 17 * * 6 pkill vlc

0 * * * *cd /home/mthrift &&  ./pi_temp.sh