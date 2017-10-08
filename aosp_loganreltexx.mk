#
# Copyright 2013 The Android Open Source Project
# Copyright 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from loganreltexx device
$(call inherit-product, device/samsung/loganreltexx/loganreltexx.mk)

# Set Device parameters
PRODUCT_NAME := aosp_loganreltexx
PRODUCT_DEVICE := loganreltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-S7275R

# Pre Built Kernel
TARGET_PREBUILT_KERNEL := device/samsung/loganreltexx/zImage
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel
	
# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=loganreltexx TARGET_DEVICE=loganrelte BUILD_FINGERPRINT="samsung/loganreltexx/loganrelte:4.2.2/JDQ39/S7275RXXUANG1:user/release-keys" PRIVATE_BUILD_DESC="loganreltexx-user 4.2.2 JDQ39 S7275RXXUANG1 release-keys"

PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    Mms \
    Stk \
    CellBroadcastReceiver \
    SoundRecorder \
	Launcher3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif
