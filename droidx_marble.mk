#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := droidx_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ADDED
DROIDX_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_USE_MOTO_CALCULATOR := true
TARGET_USE_QUICKPIC := false
TARGET_FACE_UNLOCK_SUPPORTED := true


#CoreGapps
#$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
