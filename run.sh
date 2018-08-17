#!/bin/bash

echo -e "y\nn" | phoronix-test-suite user-config-set ColoredConsole=TRUE | grep -v "Operation not permitted"
phoronix-test-suite diagnostics | grep -v "Operation not permitted"
phoronix-test-suite system-info | grep -v "Operation not permitted"
phoronix-test-suite system-sensors | grep -v "Operation not permitted"
echo "n" | phoronix-test-suite default-run build-linux-kernel compress-7zip ffmpeg nginx redis sqlite stream | grep -v "Operation not permitted"
