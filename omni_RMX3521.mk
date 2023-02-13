#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3521 device
$(call inherit-product, device/realme/RMX3521/device.mk)

PRODUCT_DEVICE := RMX3521
PRODUCT_NAME := omni_RMX3521
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 9
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_RMX3521-eng 99.87.36 SP2A.220405.004 eng.runner.20230212.013828 test-keys"

BUILD_FINGERPRINT := realme/RMX3521/RMX3521:12/RKQ1.211119.001/1666261300680:user/release-keys
