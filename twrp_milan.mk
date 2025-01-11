#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from milan device
$(call inherit-product, device/motorola/milan/device.mk)

PRODUCT_DEVICE := milan
PRODUCT_NAME := twrp_milan
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus (2022)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="milan_g-user 12 S3RDES32.123-37-5-19 0959d release-keys"
    TARGET_SCREEN_WIDTH := 1080
    TARGET_SCREEN_HEIGHT := 2460

BUILD_FINGERPRINT := motorola/milan_g/milan:12/S3RDES32.123-37-5-19/0959d:user/release-keys
