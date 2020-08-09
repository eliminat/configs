#!/bin/bash
echo "Updating Arch and AUR with yay"
yay -Syu
echo "Updating FlatPaks"
flatpak update
echo "Updating Snaps"
sudo snap refresh
