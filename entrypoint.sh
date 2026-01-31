#!/bin/bash
export DISPLAY=:1
Xvfb :1 -screen 0 1280x800x24 &
sleep 2

# Start window manager
openbox &

# Start VNC server
x11vnc -display :1 -nopw -forever -shared &

# Start noVNC
websockify --web /usr/share/novnc 6080 localhost:5900 &

# Start Gaphor
cd /app/gaphor
# Launch using the venv python directly and ensure dbus session is available if needed (though dbus-launch is usually sufficient)
# We use dbus-launch to create a session bus for Gaphor
dbus-launch /opt/venv/bin/python3 -m gaphor
