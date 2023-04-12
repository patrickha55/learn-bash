#!/bin/bash

# The script will update the host if it is based on a Linux distribution.
# grep is used to search for a pattern in a file. 
release_file=/etc/os-release

if grep -q "Arch" $release_file; then
  # The host is based on Arch Linux.
  sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file; then
  # The host is based on Debian Linux or Ubuntu.
  # dist-upgrade is used to upgrade the distribution. 
  # It is different from upgrade because it may remove or install packages.
  sudo apt update
  sudo apt upgrade -y
fi

if [ -d /etc/yum.repos.d ]; then
  # The host is based on Fedora Linux.
  sudo yum update
fi

if [ -d /etc/zypp/repos.d ]; then
  # The host is based on openSUSE Linux.
  sudo zypper refresh
  sudo zypper update
fi

if [ -d /etc/portage ]; then
  # The host is based on Gentoo Linux.
  sudo emerge --sync
  sudo emerge --ask --update --deep --newuse @world
fi

if [ -d /etc/nixos ]; then
  # The host is based on NixOS Linux.
  sudo nix-channel --update
  sudo nixos-rebuild switch
fi

if [ -d /etc/guix ]; then
  # The host is based on GuixSD Linux.
  sudo guix pull
  sudo guix package -u
fi

if [ -d /etc/rpm ]; then
  # The host is based on Red Hat Linux.
  sudo yum update
fi

if [ -d /etc/slackware-version ]; then
  # The host is based on Slackware Linux.
  sudo slackpkg update
  sudo slackpkg upgrade-all
fi

if [ -d /etc/solus ]; then
  # The host is based on Solus Linux.
  sudo eopkg upgrade
fi