LOCAL_PATH := device/meizu/mx2

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/ueventd.mx2.rc:recovery/root/ueventd.mx2.rc \
    $(LOCAL_PATH)/recovery/battery.bqfs:recovery/root/battery.bqfs 

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

TARGET_HAL_PATH := hardware/samsung/exynos4/hal
$(call inherit-product, hardware/samsung/exynos4x12.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := mx2
PRODUCT_DEVICE := mx2
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := MX2
PRODUCT_MANUFACTURER := Meizu
