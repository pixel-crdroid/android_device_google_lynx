#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/lynx/aosp_lynx.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/lynx/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := lineage_lynx

# Crdroid Extra Stuffs
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_GOOGLE_CAMERA := true
WITH_GMS := true
TARGET_HAS_UDFPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
RISING_CHIPSET="Google Tensor 2" \
RISING_MAINTAINER="Vikas Yadav"


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=lynx \
    PRIVATE_BUILD_DESC="lynx-user 14 AP1A.240505.005 11677807 release-keys"

BUILD_FINGERPRINT := google/lynx/lynx:14/AP1A.240505.005/11677807:user/release-keys

$(call inherit-product, vendor/google/lynx/lynx-vendor.mk)
