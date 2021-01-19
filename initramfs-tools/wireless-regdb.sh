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
if [ -e "/lib/firmware/regulatory.db" ]; then
	mkdir -p $DESTDIR/lib/firmware
	cp -L /lib/firmware/regulatory.db $DESTDIR/lib/firmware/
	cp -L /lib/firmware/regulatory.db.p7s $DESTDIR/lib/firmware/
fi
