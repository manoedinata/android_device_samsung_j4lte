#
# Copyright (C) 2019-2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/samsung/j4lte

# Audio
BOARD_USE_TFA_AMP := true

# Assert
TARGET_OTA_ASSERT_DEVICE := j4lte,j4ltejx,j4lteub

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
TARGET_KERNEL_CONFIG := exynos7570-j4lte_defconfig

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_j4lte
TARGET_RECOVERY_DEVICE_MODULES := libinit_j4lte

# Shims
TARGET_LD_SHIM_LIBS += \
    /vendor/lib/libbauthserver.so|/vendor/lib/libbauthtzcommon_shim.so

# TEEGRIS
BOARD_SEPOLICY_TEE_FLAVOR := teegris

# Wifi
BOARD_WLAN_DEVICE                := slsi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_slsi
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_slsi
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# inherit from common
-include device/samsung/universal7570-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/j4lte/BoardConfigVendor.mk
