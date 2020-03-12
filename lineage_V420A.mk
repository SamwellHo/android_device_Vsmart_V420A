#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Common device
$(call inherit-product, device/Vsmart/msm8953-common/msm8953.mk)

# Device
$(call inherit-product, device/Vsmart/V420A/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-vsmart

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Vsmart
PRODUCT_DEVICE := V420A
PRODUCT_NAME := lineage_V420A
PRODUCT_BRAND := Vsmart
PRODUCT_MODEL := Vsmart Joy 2+
PRODUCT_MANUFACTURER := Vsmart
BOARD_VENDOR := Vsmart

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=bardock \
        PRIVATE_BUILD_DESC="V420A_vsmart-user 9 PKQ1.190601.001 V420A_OPEN_U_M6_20200305 release-keys"

BUILD_FINGERPRINT := vsmart/V420A_open/V420A:9/PKQ1.190601.001/V420A_OPEN_U_M6_20200305:user/release-keys
