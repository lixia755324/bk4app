FROM scratch

LABEL maintainer=lixia
LABEL homepage="https://github.com/lixia755324"

ADD a.txt ./

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
