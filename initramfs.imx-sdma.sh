#!/bin/sh

PREREQ="udev"
prereqs()
{
	echo "$PREREQ"
}

if [ "$1" = "prereqs" ]; then
	prereqs
	exit 0
fi

# source functions
. /usr/share/initramfs-tools/hook-functions

# copy firmware
mkdir -p $DESTDIR/lib/firmware/imx/sdma
cp /lib/firmware/imx/sdma/*.bin $DESTDIR/lib/firmware/imx/sdma/
