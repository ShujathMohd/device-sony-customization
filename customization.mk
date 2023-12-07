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

PRODUCT_COPY_FILES += \
   $(CUST_PATH)/rootdir/vendor/lib64/libprotobuf-cpp-full-3.9.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-3.9.1.so \
   $(CUST_PATH)/rootdir/vendor/lib64/libprotobuf-cpp-lite-3.9.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-lite-3.9.1.so

# Kernel Headers
TARGET_KERNEL_HEADERS := kernel/sony/msm-4.14/kernel

TARGET_FWK_DETECT_PATH := vendor/qcom/opensource/core-utils
