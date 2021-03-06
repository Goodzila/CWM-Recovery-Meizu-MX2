## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mx2

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/mx2/mx2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mx2
PRODUCT_NAME := cm_mx2
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := MX2
PRODUCT_MANUFACTURER := Meizu
