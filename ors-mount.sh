#!/sbin/sh

#######################################
#  Do not remove this credits header  #
#  sk8erwitskil : first release       #
#  PhilZ        : maintained          #
#######################################

# in cm-10.2 voldmanaged devices
# internal sd is always /sdcard which is a symlink to /storage/sdcard0 or /data/media (no more /emmc)
# external sd is now /storage/sdcard1, no more /external_sd
EXT_SD=`cat /etc/recovery.fstab | grep -v "#" | grep -o /etc`;

# it could be non voldmanaged volume or /data/media: assume internal sd is /sdcard as it should always be (no more /emmc as internal)
if [ "$EXT_SD" = "" ];
     then
        EXT_SD="/etc"
fi;

