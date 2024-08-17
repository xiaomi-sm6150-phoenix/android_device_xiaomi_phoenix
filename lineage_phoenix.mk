#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X2
PRODUCT_DEVICE := phoenix
PRODUCT_NAME := lineage_phoenix
PRODUCT_MANUFACTURER := Xiaomi

# RisingOS stuff
RISING_MAINTAINER=SharmagRit
TARGET_CORE_GMS_EXTRAS := true
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_CORE_GMS := true
WITH_GMS := true

# RisingOS Maintainer stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon® 730G" \
    RISING_MAINTAINER="SharmagRit"
