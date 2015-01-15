## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mt6572

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alps/mt6572/device_mt6572.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mt6572
PRODUCT_NAME := cm_mt6572
PRODUCT_BRAND := alps
PRODUCT_MODEL := mt6572
PRODUCT_MANUFACTURER := alps
