#!/bin/bash

sudo -i nix profile install nixpkgs#cups nixpkgs#cups-pk-helper nixpkgs#cups-filters

sudo ln -sf /nix/var/nix/profiles/default/lib/systemd/system/cups-lpd.socket /etc/systemd/system/cups-lpd.socket
sudo ln -sf /nix/var/nix/profiles/default/lib/systemd/system/cups-lpd@.service /etc/systemd/system/cups-lpd@.service
sudo ln -sf /nix/var/nix/profiles/default/lib/systemd/system/cups.path /etc/systemd/system/cups.path
sudo ln -sf /nix/var/nix/profiles/default/lib/systemd/system/cups.service /etc/systemd/system/cups.service
sudo ln -sf /nix/var/nix/profiles/default/lib/systemd/system/cups.socket /etc/systemd/system/cups.socket
sudo ln -sf /nix/var/nix/profiles/default/etc/cups /etc/cups
sudo systemctl enable --now avahi-daemon
sudo systemctl enable --now cups
sudo -i nix profile install nixpkgs#system-config-printer
