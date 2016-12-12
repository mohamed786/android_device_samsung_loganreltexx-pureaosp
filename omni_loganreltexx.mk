# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/loganreltexx/full_loganreltexx.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_loganreltexx
PRODUCT_DEVICE := loganreltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-S7275R
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=loganreltexx TARGET_DEVICE=loganrelte BUILD_FINGERPRINT="samsung/loganreltexx/loganrelte:4.2.2/JDQ39/S7275RXXUANG1:user/release-keys" PRIVATE_BUILD_DESC="loganreltexx-user 4.2.2 JDQ39 S7275RXXUANG1 release-keys"

