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
if [ -d "/lib/firmware/ath10k/QCA6174/hw3.0" ]; then
	mkdir -p $DESTDIR/lib/firmware/ath10k/QCA6174/hw3.0
	cp /lib/firmware/ath10k/QCA6174/hw3.0/*.bin $DESTDIR/lib/firmware/ath10k/QCA6174/hw3.0/
fi

# now copy version-specific ones if any
if [ -d "/lib/firmware/${version}/ath10k/QCA6174/hw3.0" ]; then
	mkdir -p  $DESTDIR/lib/firmware/${version}/ath10k/QCA6174/hw3.0
	cp /lib/firmware/${version}/ath10k/QCA6174/hw3.0/*.bin $DESTDIR/lib/firmware/${version}/ath10k/QCA6174/hw3.0/
fi
