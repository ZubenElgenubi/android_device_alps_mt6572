USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alps/mt6572/BoardConfigVendor.mk
-include device/alps/mt6572/BoardConfigCommon.mk

#recovery fstab
TARGET_RECOVERY_FSTAB = device/alps/mt6572/recovery.fstab

#custom boot img
BOARD_CUSTOM_MKBOOTIMG := mkmtkbootimg