FROM ubuntu:18.04

ARG PTS_VERSION=8.0.1
RUN apt update && \
    apt -yqq install curl php-cli php-gd php-xml php-zip php-posix && \
    curl -LO http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_${PTS_VERSION}_all.deb && \
    dpkg -i phoronix-test-suite_${PTS_VERSION}_all.deb && \
    rm phoronix-test-suite_${PTS_VERSION}_all.deb && \
    phoronix-test-suite batch-install build-linux-kernel compress-7zip ffmpeg nginx redis sqlite stream network-loopback

ENTRYPOINT run.sh $@
