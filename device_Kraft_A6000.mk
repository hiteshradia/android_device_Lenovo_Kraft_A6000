$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/LENOVO/Kraft_A6000/Kraft_A6000-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/Kraft_A6000/overlay

LOCAL_PATH := device/LENOVO/Kraft_A6000
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_Kraft_A6000
PRODUCT_DEVICE := Kraft_A6000
