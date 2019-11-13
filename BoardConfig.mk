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

# inherit from common msm8976-common
-include device/nubia/msm8976-common/BoardConfigCommon.mk

DEVICE_PATH := device/nubia/nx591j

# Asserts
TARGET_OTA_ASSERT_DEVICE := nx591j,NX591J

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := mokee_nx591j_defconfig

# MoKee Hardware
JAVA_SOURCE_OVERLAYS := org.mokee.hardware|$(DEVICE_PATH)/mkhw|**/*.java

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4831838208
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56428567552

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/class/input/input2/wake_gesture"

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2017-04-01

# Inherit from the proprietary version
-include vendor/nubia/nx591j/BoardConfigVendor.mk
