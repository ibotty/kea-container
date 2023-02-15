FROM quay.io/fedora/fedora:latest

LABEL Maintainer="Tobias Florek <tob@butter.sh>"

VOLUME ["/etc/kea", "/var/run/kea", "/var/lib/kea"]

RUN dnf install -y kea kea-hooks \
 && dnf clean all

CMD ["/usr/sbin/kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]
