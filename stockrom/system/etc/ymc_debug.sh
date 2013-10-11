#!/system/bin/sh

# This setting is used only for debugging.
# At the time of product release, please give proper permissions to remove this setting.

# CodecTuner to access the device file.
chmod 0666 /dev/snd/pcmC0D0c
chmod 0666 /dev/snd/pcmC0D0p
chmod 0666 /dev/snd/controlC0
chmod 0666 /dev/snd/timer
chmod 0666 /dev/snd/hwC0D0

# CodecTuner to tuning the configuration file sound.
# "/system/etc/ysound.xml" is defined the "device/yamaha/ymc/apache2.0/src/common/sound.h"
# #define SOUND_CONFIG_FILEPATH "/system/etc/ysound.xml"
# "/system/etc/ymc/param" is defined the SOUND_CONFIG_FILEPATH
# (XML) <parameter rootdir="/system/etc/ymc/param" />
#mount -t yaffs2 -o rw,remount /dev/block/mtdblock03 /system
chmod 0777 /system/etc/ysound.xml
chmod 0777 /system/etc/ymc/param
chmod 0777 /system/etc/ymc/param/*

# CodecTuner uses the socket file in order to communicate with CodecCtrlLibrary.
# Directory of the create socket file.
# "/data/ymc" is defined the "device/yamaha/ymc/apache2.0/src/common/CommDefine.h"
# #define COMM_FILEPATH ("/data/ymc/ymc_proc_comm")
mkdir -p /data/ymc
chmod 777 /data/ymc
