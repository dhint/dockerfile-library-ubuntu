#
# A Debian Jessie container with helper scripts for installing packages
#
# todo: this is pretty much identical to bwstitt/library-ubuntu
#

FROM debian:jessie

ADD ./src/docker-apt-install.sh /usr/local/sbin/docker-apt-install

RUN chmod 500 \
    /usr/local/sbin/docker-apt-install

RUN docker-apt-install \
    apt-utils

CMD ["/bin/bash", "-l"]

# Rockerfiles have this, but don't work with Docker Hub
# ATTACH ["/bin/bash", "-l"]
# PUSH bwstitt/library-debian:{{ $version }}
