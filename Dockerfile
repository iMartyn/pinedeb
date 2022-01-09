FROM debian:stable

RUN apt update
RUN apt install -y debootstrap binfmt-support qemu-user-static
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh $*
