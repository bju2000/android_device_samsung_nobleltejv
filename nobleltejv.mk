LOCAL_PATH := device/samsung/nobleltejv

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# Radio
# cpboot-daemon for modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ril/sbin/cbd:root/sbin/cbd

# call the proprietary setup
$(call inherit-product, vendor/samsung/zero-common/zero-common-vendor.mk)
