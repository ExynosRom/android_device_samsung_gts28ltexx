LOCAL_PATH := device/samsung/gts28ltexx

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
	ueventd.universal5433.rc \
    init.baseband.rc

###########################################################
### AUDIO
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

###########################################################
### BLUETOOTH
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts28ltexx/gts28ltexx-vendor.mk)
