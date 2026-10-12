#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit the phone-specific configuration
$(call inherit-product, device/samsung/s5e8825-common/products/phone/product.mk)

# Inherit the device-specific vendor configuration
$(call inherit-product, vendor/samsung/m34x/m34x-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += mixer_paths.xml

# Audio - Effects - SoundBooster
$(call soong_config_set,samsungAudioVars,soundbooster_dsp_library,//vendor/samsung/m34x:lib_SoundBooster_ver1130)

# Display - AOD
$(call inherit-product, device/samsung/s5e8825-common/products/aod/product.mk)

# Display - Configuration
PRODUCT_PACKAGES += displayconfig.xml

# Init
PRODUCT_PACKAGES += init.m34x.rc

# Installer
TARGET_ANDROID_INFO_EXTRA_FILE := device/samsung/m34x/configs/installer/android-info-extra.txt

# NFC
$(call inherit-product, device/samsung/s5e8825-common/products/st_nfc/product.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice \
    WiFiOverlayDevice

# Properties
TARGET_VENDOR_PROP += device/samsung/m34x/configs/props/vendor.prop

# RIL
TARGET_HAS_RIL := true

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 33

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += device/samsung/m34x

# Unify
$(call inherit-product, device/samsung/s5e8825-common/products/unify/product.mk)
