# Copyright (C) 2014 The Android Open Source Project
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

CUST_PATH := device/sony/customization

include vendor/lineage/config/BoardConfigSoong.mk

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_DUP_RULES := true

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL = $(CUST_PATH)/prebuilt/kernel-dtb-$(TARGET_DEVICE)
BOARD_PREBUILT_DTBOIMAGE ?= $(CUST_PATH)/prebuilt/dtbo-$(TARGET_DEVICE).img

BOARD_VENDOR_SEPOLICY_DIRS += $(CUST_PATH)/sepolicy/vendor
