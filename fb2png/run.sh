#!/bin/sh
#
# helper script for capture picture on device
#
# Kyan He <kyan.ql.he@gmail.com> @ Tue Feb 15 12:42:48 CST 2011
#
#

ADB_OPTIONS=
PNG="/sdcard/Pictures/fbdump.png"

if [ ! "$FB2PNG" = "" ];
then
adb $ADB_OPTIONS push $FB2PNG /sdcard/Pictures
adb $ADB_OPTIONS shell chmod 777 /sdcard/Pictures
adb $ADB_OPTIONS shell /sdcard/Pictures/fb2png

adb $ADB_OPTIONS pull $PNG
adb $ADB_OPTIONS shell rm $PNG
else
    echo "define \$FB2PNG first"
fi
