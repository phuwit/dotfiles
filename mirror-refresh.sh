#!/bin/sh

curl -s "https://archlinux.org/mirrorlist/?country=TH&country=SG&country=HK&protocol=https&use_mirror_status=on" | sed -e "s/^#Server/Server/" -e "/^#/d" | rankmirrors - > /etc/pacman.d/mirrorlist
