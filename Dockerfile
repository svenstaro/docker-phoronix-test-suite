FROM ubuntu:18.04

LABEL maintainer="Sven-Hendrik Haase <svenstaro@gmail.com>"
ARG PTS_VERSION=8.0.1
RUN apt-get update && \
    apt-get -y install --no-install-recommends curl php-cli php-gd php-xml php-zip php-posix && \
    curl -LO http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_${PTS_VERSION}_all.deb && \
    dpkg -i phoronix-test-suite_${PTS_VERSION}_all.deb && \
    rm phoronix-test-suite_${PTS_VERSION}_all.deb && \
    phoronix-test-suite batch-install build-linux-kernel compress-7zip ffmpeg nginx redis sqlite stream network-loopback && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /phoronix
ADD run.sh /phoronix/run.sh
ENTRYPOINT bash /phoronix/run.sh $@
