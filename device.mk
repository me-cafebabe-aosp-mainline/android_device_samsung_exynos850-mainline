#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/exynos850-mainline

# Inherit from mainline/common
$(call inherit-product, device/mainline/common/mainline_common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Graphics
TARGET_GRAPHICS := mesa
TARGET_GRAPHICS_ALLOCATOR_HAL := gralloc_gbm_mesa
TARGET_GRAPHICS_COMPOSER_HAL := drm_hwcomposer

# Images
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init/fstab.exynos850:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.exynos850 \
    $(DEVICE_PATH)/init/init.exynos850.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.exynos850.rc \
    $(DEVICE_PATH)/init/ueventd.exynos850.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.exynos850.rc

# Kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayCommon \
    LineageSDKOverlayCommon

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init/fstab.exynos850:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos850

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 37

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Touchscreen firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/firmware/td4150_a21s.bin:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/td4150_a21s.bin \
    $(DEVICE_PATH)/firmware/td4150_a21s.bin:$(TARGET_COPY_OUT_RECOVERY)/root/lib/firmware/td4150_a21s.bin
