$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_X10
PRODUCT_DEVICE := X10

# Ramdisk Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/sbin/init_parttion.sh:root/sbin/init_parttion.sh \
	$(LOCAL_PATH)/rootdir/charger:root/charger \
	$(LOCAL_PATH)/rootdir/config_mem.ini:root/config_mem.ini \
	$(LOCAL_PATH)/rootdir/disp.ko:root/disp.ko \
	$(LOCAL_PATH)/rootdir/file_contexts:root/file_contexts \
	$(LOCAL_PATH)/rootdir/fstab.sun8i:root/fstab.sun8i \
	$(LOCAL_PATH)/rootdir/gslX680new.ko:root/gslX680new.ko \
	$(LOCAL_PATH)/rootdir/gt9xxf_ts.ko:root/gt9xxf_ts.ko \
	$(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
	$(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
	$(LOCAL_PATH)/rootdir/initlogo.rle:root/initlogo.rle \
	$(LOCAL_PATH)/rootdir/nand.ko:root/nand.ko \
	$(LOCAL_PATH)/rootdir/property_contexts:root/property_contexts \
	$(LOCAL_PATH)/rootdir/recovery.fstab:root/etc/recovery.fstab \
	$(LOCAL_PATH)/rootdir/service_contexts:root/service_contexts \
	$(LOCAL_PATH)/rootdir/sunxi_tr.ko:root/sunxi_tr.ko \
	$(LOCAL_PATH)/rootdir/sw-device.ko:root/sw-device.ko \
	$(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc

