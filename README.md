# gnome-refreshrate-power
A script to change the refresh rate of a display (or res) based on the current power profile

### Guide

1. Download the `rate-profile-monitor.sh` script somwhere, I'll use the home directory
2. Make it executable with `chmod +x rate-profile-monitor.sh`
3. Make the changes to the script based on your display's resolution and refresh rate
4. Make sure you have `gnome-monitor-config` installed
5. Download `rate-profile-monitor.service` to `/etc/systemd/user/` directory
6. Start & enable the service
```
systemctl --user daemon-reload
sudo systemctl --user start rate-profile-monitor.service
sudo systemctl --user enable rate-profile-monitor.service
```

The script only checks every 60 seconds to make the script not use too many resources
