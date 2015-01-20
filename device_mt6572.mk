$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/alps/mt6572/mt6572-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/alps/mt6572/overlay

LOCAL_PATH := device/alps/mt6572
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mt6572
PRODUCT_DEVICE := mt6572



##############NEcesary files

PRODUCT_PACKAGES += \
    mkmtkbootimg
	
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    audio_policy.default \
    audio.primary.default \
    camera.default \
    gps.default \
    gralloc.default \
    keystore.default \
    libaudio.r_submix.default \
    libaudio.usb.default \
    lights.default \
    local_time.default \
    power.default \
    sensors.default \
    librs_jni \
    com.android.future.usb.accessory

WIFI_BAND := 802_11_BG
