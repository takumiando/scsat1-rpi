#!/bin/sh

cd "$(dirname "$0")" || exit 1

rm -rf build

west build -b rpi_pico mcuboot/boot/zephyr \
           -- -DDTC_OVERLAY_FILE="$PWD"/rpi_pico.overlay \
              -DOVERLAY_CONFIG="$PWD"/rpi_pico.conf
