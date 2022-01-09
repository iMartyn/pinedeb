#!/bin/bash

mkdir -p /target

case "$1" in
"min")
    EXTRA_PACKAGES=""
    ;;
"wifietc")
    EXTRA_PACKAGES="--include=systemd-sysv,vim,less,wpasupplicant,iproute2,iputils-ping,wireless-regdb,kmod,udev,dhcpcd5,dracut,u-boot-tools"
    ;;
"full")
    EXTRA_PACKAGES="--include=systemd-sysv,vim,less,wpasupplicant,iproute2,iputils-ping,wireless-regdb,kmod,udev,dhcpcd5,dracut,xfce4,onboard"
    ;;
*)
    echo 'Error: first arg to docker run must be `min`, `wifietc` or `full`'
    exit 1
    ;;
esac

debootstrap --arch=arm64 \
            --components=main,non-free \
            --variant=minbase \
            --force-check-gpg \
            $EXTRA_PACKAGES \
            bullseye \
            /target \
            http://cdn-fastly.deb.debian.org/debian
