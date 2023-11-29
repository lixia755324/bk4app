FROM scratch

LABEL maintainer=lixia
LABEL homepage="https://github.com/lixia755324"

ADD https://downloads.openwrt.org/releases/23.05.2/targets/x86/64/openwrt-23.05.2-x86-64-rootfs.tar.gz ./openwrt.tar.gz
RUN tar -zxf ./openwrt.tar.gz

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
