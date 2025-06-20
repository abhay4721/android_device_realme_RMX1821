#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from RMX1821 device makefile
$(call inherit-product, device/realme/RMX1821/device.mk)

# LineageOS Stuff.
TARGET_EXCLUDES_AUDIOFX := true

# Boot Animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720

# GMS build flags
ARROW_GAPPS := true

# Bypass Charging flagsAdd commentMore actions
BYPASS_CHARGE_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_RMX1821
PRODUCT_DEVICE := RMX1821
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX1821
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo
