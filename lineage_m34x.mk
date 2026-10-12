#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the device
$(call inherit-product, device/samsung/m34x/device.mk)

# Device identifiers
PRODUCT_DEVICE := m34x
PRODUCT_NAME := lineage_m34x
PRODUCT_MODEL := SM-M346B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m34xnsxx-user 16 BP4A.251205.006 M346BXXSEFZH9 release-keys" \
    BuildFingerprint=samsung/m34xnsxx/essi:16/BP4A.251205.006/M346BXXSEFZH9:user/release-keys \
    DeviceProduct=m34xnsxx \
    SystemName=m34xnsxx
