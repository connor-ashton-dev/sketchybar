#!/usr/bin/env zsh

# Check if Calendar is running
if pgrep -x "Calendar" > /dev/null; then
    # Calendar is running, so quit and relaunch it
    osascript -e 'tell application "Calendar" to quit'
    sleep 1 # Wait a moment to ensure the application has quit
    open -a "Calendar"
else
    # Calendar is not running, so just start it
    open -a "Calendar"
fi
