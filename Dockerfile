FROM debian

LABEL maintainer="zasfe <zasfe@gmail.com>"
LABEL build_date="2024-04-21"

ENV container docker
ENV DEBIAN_FRONTEND noninteractive

# Enable systemd.
RUN apt-get update ; \
    apt-get install -y systemd systemd-sysv init; \
    apt-get clean ; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
    rm -rf /etc/systemd/system/*.wants/* ; \
    rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
    rm -rf /lib/systemd/system/systemd-update-utmp*

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/lib/systemd/systemd"]
