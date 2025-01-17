#
# Copyright (C) 2019 The MoKee Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx591j/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := mokee_nx591j
PRODUCT_DEVICE := nx591j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Z17 Lite
PRODUCT_MANUFACTURER := NUBIA

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX591-user 7.1.1 NMF26F eng.nubia.20190819.223440 release-keys" \
    TARGET_DEVICE="nx591j"

BUILD_FINGERPRINT := nubia/NX591J/NX591J:7.1.1/NMF26F/eng.nubia.20170905.150740:user/release-keys
