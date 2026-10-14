#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from parent
$(call inherit-product, device/samsung/exynos850-mainline/device.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1600

# Graphics
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
