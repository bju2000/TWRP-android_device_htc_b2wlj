#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    "/sys/class/graphics/fb0",
    "/sys/class/graphics/fb1",
    "/sys/class/graphics/fb2",

    "/sys/block/mmcblk0",
    "/sys/devices/platform/msm_sdcc.1",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p42",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p45",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p47",

    "/sys/bus/mmc",
    "/sys/bus/mmc/drivers/mmcblk",
    "/sys/bus/sdio/drivers/bcmsdh_sdmmc",
    "/sys/module/mmc_core",
    "/sys/module/mmcblk",

    "/sys/devices/virtual/input*",
    "/sys/class/misc/uinput",
    "/sys/devices/f9925000.i2c/i2c-1/1-003a/input/input2/js0",
    "/sys/devices/f9925000.i2c/i2c-1/1-003a/input/input2/event2",
    "/sys/devices/f9925000.i2c/i2c-1/1-003a/input/input2",
    "/sys/module/input_polldev",

    // for adb
    "/sys/class/tty/ptmx",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p45", //system
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p46", // /cache
    "/sys/class/misc/android_adb",
    "/sys/class/android_usb/android0/f_adb",
    "/sys/bus/usb",
    "/sys/devices/virtual/misc/android_adb",
    "/sys/devices/virtual/android_usb/android0/f_adb",

    // USB Drive is in here
    "/sys/bus/hid/drivers/generic-usb",
    "/sys/bus/usb/drivers*",
    "/sys/bus/usb",
    "/sys/bus/platform/drivers/msm_hsusb_host",
    "/sys/bus/platform/drivers/msm_hsusb",
    "/sys/bus/platform/drivers/android_usb",
    "/sys/bus/platform/drivers/usb_bam",
    "/sys/devices/fe8050c8.android_usb",
    "/sys/devices/usb_bam",
    "/sys/devices/virtual/net/rmnet_usb0",
    "/sys/devices/virtual/misc/usb_accessory",
    "/sys/devices/virtual/misc/mtp_usb",
    "/sys/devices/virtual/android_usb*",
    "/sys/devices/virtual/dwc_ext_chg/usb_ext_chg",
    "/sys/devices/virtual/switch/usb_audio",
    "/sys/devices/virtual/switch/usb_audio_class",
    "/sys/devices/virtual/switch/htcctusbcmd",
    "/sys/devices/virtual/switch/usb_diag",
    "/sys/devices/virtual/switch/usb_connect2pc",
    "/sys/devices/platform/htc_battery/power_supply",
    "/sys/devices/platform/android_usb",
    "/sys/module/snd_usb_audio",
    "/sys/module/usb_storage",
    "/sys/module/usbhid",
    "/sys/module/usbcore",

    // /dev/fuse
    "/sys/devices/fc4be024.fuse",
    "/sys/devices/virtual/misc/fuse",
    "/sys/devices/fc4be024.jtagfuse",
    "/sys/module/fuse",

    NULL
};
