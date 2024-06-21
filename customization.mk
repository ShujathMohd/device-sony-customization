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

# Inherit some common Lineage stuff.
$(call inherit-product-if-exists, vendor/lineage/config/common_full_phone.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/sony/customization/overlay-lineage

PRODUCT_COPY_FILES += \
   $(CUST_PATH)/rootdir/vendor/lib64/libprotobuf-cpp-full-3.9.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-3.9.1.so \
   $(CUST_PATH)/rootdir/vendor/lib64/libprotobuf-cpp-lite-3.9.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-lite-3.9.1.so

# Kernel Headers
TARGET_KERNEL_HEADERS := kernel/sony/msm-4.14/kernel

TARGET_FWK_DETECT_PATH := vendor/qcom/opensource/core-utils

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.surface_flinger.enable_frame_rate_override=false

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.sony_sdm845 \
    lights.sdm845

# Live Display
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.1-service.sony

# DEX2OAT
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat64.enabled=true

# RRO Overlay
PRODUCT_PACKAGES += \
    WifiOverlay \
    TetheringConfigOverlay

# Verity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.apk_verity.mode=2

# Incremental FS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.incremental.enable=true

# SimpleKeyboard
PRODUCT_PACKAGES += \
    SimpleKeyboard
