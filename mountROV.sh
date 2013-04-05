#!/bin/sh

#  Linux_Client.sh
#  
#
#  Created by Arjo Chakravarty on 4/4/13.
#

KEYFILE=root.key
MAC=00:1f:5d:b4:ab:f1  # phone mac address.
CHANNEL=7               # phone obex file transfer channel
MNTPOINT=/var/www/obex


mkdir -p $MNTPOINT
echo "Trying to get key from bluetooth phone..." >&2

timeout 2 obexfs -b $MAC -B $CHANNEL $MNTPOINT >/dev/null 2>&1