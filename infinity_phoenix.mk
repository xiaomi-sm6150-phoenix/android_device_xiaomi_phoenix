#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/phoenix/config/common_full_phone.mk)

PRODUCT_NAME := phoenix_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="phoenix-user 11 RKQ1.200826.002 21.9.28 release-keys" \
    BuildFingerprint=Redmi/phoenix/phoenix:11/RKQ1.200826.002/21.9.28:user/release-keys

# Infinity-X stuff
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SHIPS_FULL_GAPPS := true
USE_MOTO_CALCULATOR := false
TARGET_SUPPORTS_BLUR := true
TARGET_DISABLE_EPPE := true
TARGET_HAS_UDFPS := false
WITH_GAPPS := true

# Maintainer & Build type
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := SharmagRit
