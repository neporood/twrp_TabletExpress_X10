# inherit from the proprietary version
-include vendor/TabletExpress/X10/BoardConfigVendor.mk

LOCAL_PATH := device/TabletExpress/X10

BOARD_VENDOR := allwinner

# Assert
TARGET_OTA_ASSERT_DEVICE := X10

# Platform
TARGET_BOARD_PLATFORM := octopus

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := exdroid
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12683575296
BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
TARGET_PREBUILT_KERNEL := device/TabletExpress/X10/kernel
BOARD_KERNEL_CMDLINE := boot_type=0 disp_para=100 fb_base=0x0 config_size=53088 androidboot.serialno=00000000000000000000 androidboot.hardware=sun8i enforcing=1 console=ttyS0,115200 root=/dev/system init=/init vmalloc=384M ion_cma_list=120m,176m,512m loglevel=4 partitions=bootloader@nanda:env@nandb:boot@nandc:system@nandd:misc@nande:recovery@nandf:cache@nandg:metadata@nandh:private@nandi:alog@nandj:UDISK@nandk
# OEM uses non-standard offsets
BOARD_MKBOOTIMG_ARGS := --base 40000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 01000000 --tags_offset 00000100

# Recovery
TARGET_RECOVERY_FSTAB := device/TabletExpress/X10/recovery/root/etc/recovery.fstab    
TARGET_USERIMAGES_USE_EXT4 := true

# Device Specific sepolicy
BOARD_SEPOLICY_DIRS := \
       device/TabletExpress/X10/sepolicy

BOARD_SEPOLICY_UNION := \
       module.te \

# TWRP
TW_THEME := landscape_hdpi
TWHAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_EXCLUDE_SUPERSU := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

