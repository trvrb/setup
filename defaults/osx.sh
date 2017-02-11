#!/bin/bash
name="$1"

# Ask for the administrator password upfront
sudo -v

# Set system preferences
source defaults/system_prefs.sh $name

# Set dock Applications
source defaults/dock_apps.sh
