#!/bin/bash

phoronix-test-suite system-info
phoronix-test-suite system-sensors
phoronix-test-suite network-info
yes | phoronix-test-suite default-run build-linux-kernel compress-7zip ffmpeg nginx redis sqlite stream
