# docker-phoronix-test-suite [![Docker Automated build](https://img.shields.io/docker/automated/svenstaro/docker-phoronix-test-suite.svg)](https://hub.docker.com/r/svenstaro/docker-phoronix-test-suite/) [![Docker Build Status](https://img.shields.io/docker/build/svenstaro/docker-phoronix-test-suite.svg)](https://hub.docker.com/r/svenstaro/docker-phoronix-test-suite/)

A Docker image featuring a ready-to-run installation of the Phoronix Test Suite

This is designed to run entirely unattended without having to supply any options. You can find the results of the benchmark in stdout during its run. It does **not** require root.

The tests that will be run are a sensible mix of real-world and synthetic benchmarks.

Find it here on Docker Hub: **[svenstaro/docker-phoronix-test-suite](https://hub.docker.com/r/svenstaro/docker-phoronix-test-suite/)**

## How to use

It's quite simple to run it as you do not need to supply any options:

    docker run -t svenstaro/docker-phoronix-test-suite
