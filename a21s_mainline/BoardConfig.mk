#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_DEVICE_PATH := device/samsung/exynos850-mainline/a21s_mainline

# Inherit from parent
include device/samsung/exynos850-mainline/BoardConfig.mk

# Display
TARGET_SCREEN_DENSITY := 280

# DTB
BOARD_DTB_CFG := $(TARGET_DEVICE_PATH)/kernel/exynos850-a217f.cfg

# DTBO
BOARD_DTBO_CFG := $(TARGET_DEVICE_PATH)/kernel/exynos850-a217f-overlay.cfg
BOARD_KERNEL_SEPARATED_DTBO := true

# OTA
TARGET_OTA_ASSERT_DEVICE := a21s_mainline
