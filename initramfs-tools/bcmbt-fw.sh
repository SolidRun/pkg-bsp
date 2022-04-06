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
# first, the common ones, if any
if [ -d "/lib/firmware/brcm" ]; then
	mkdir -p $DESTDIR/lib/firmware/brcm
	cp /lib/firmware/brcm/*.hcd $DESTDIR/lib/firmware/brcm/ || true
fi

# now copy version-specific ones if any
if [ -d "/lib/firmware/${version}/ath10k/QCA6174/hw3.0" ]; then
	mkdir -p $DESTDIR/lib/firmware/${version}/brcm
	cp /lib/firmware/${version}/brcm/*.hcd $DESTDIR/lib/firmware/${version}/brcm/ || true
fi
