#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the device
$(call inherit-product, device/samsung/a25x/device.mk)

# Device identifiers
PRODUCT_DEVICE := a25x
PRODUCT_NAME := lineage_a25x
PRODUCT_MODEL := SM-A256B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a25xxx-user 16 BP4A.251205.006 A256BXXSEEZH9 release-keys" \
    BuildFingerprint=samsung/a25xxx/a25x:16/BP4A.251205.006/A256BXXUCEZE6:user/release-keys \
    DeviceProduct=a25xxx \
    SystemName=a25xxx
