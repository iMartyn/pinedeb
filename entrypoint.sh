#!/bin/bash

mkdir -p /target
debootstrap --arch=arm64 \
            --components=main,non-free \
            --variant=minbase \
            --force-check-gpg \
            bullseye \
            /target \
            http://cdn-fastly.deb.debian.org/debian
