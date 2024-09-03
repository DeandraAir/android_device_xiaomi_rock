#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/rock/device.mk)

# Inherit from Basic Call Recorder
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# Inherit some common Rising stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

# Enable PIF by default
PRODUCT_PROPERTY_OVERRIDES += persist.sys.pixelprops.gms=true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT :=POCO/stone_p_global/stone:14/UP1A.231005.007/V816.0.5.0.ULUIDXM:user/release-keys
PRIVATE_BUILD_DESC="stone_p_global-user 14 UP1A.231005.007 V816.0.5.0.ULUIDXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
