#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common mistOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := false

# Bypass charging
BYPASS_CHARGE_SUPPORTED := true

# GMS
WITH_GMS := true

# Mist OS Flags
MIST_BUILD_TYPE := OFFICIAL
MISTOS_MAINTAINER := Javi

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
