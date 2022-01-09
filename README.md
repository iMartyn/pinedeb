# pinedeb
Automatically generated debootstrap filesystems.  Mostly for the pinenote, but also for any arm64 platform you want a `minbase` debian where debootstrap is too much of a fight.

Currently working : minbase, minbase

To come : full X11 with onboard

If you don't trust github actions CI builds, you can also run the dockerfile locally (or from the github container registry):
```
# Optionally build it
docker build .
# replace ghcr.io/imartyn/pinedeb:latest with the sha1 you built above if you want to.
docker run ghcr.io/imartyn/pinedeb:latest -- min
```

you might need to install `qemu-user-static` though.  I didn't on windows docker, but Github actions runners seemed to need it.
```
sudo apt install -y binfmt-support qemu-user-static
```
