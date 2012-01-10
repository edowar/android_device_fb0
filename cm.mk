#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/fih/fb0/device_fb0.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_fb0
PRODUCT_BRAND := CSL
PRODUCT_DEVICE := fb0
PRODUCT_MODEL := CSL-MI410
PRODUCT_MANUFACTURER := FIH

# Release name and versioning
PRODUCT_RELEASE_NAME := FB0

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=GWK74 \
    PRODUCT_NAME=fb0 \
    TARGET_DEVICE=fb0 \
    BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys \
    PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=user
