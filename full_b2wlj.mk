# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

# Inherit from b2wlj device
$(call inherit-product, device/htc/b2wlj/device.mk)

LOCAL_PATH := device/htc/b2wlj
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.zaracl.rc \
    choice_fn \
    detect_key \
    offmode_charging \
    power_test

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_0.png:recovery/root/res/offmode_charging_images/r_0.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_1.png:recovery/root/res/offmode_charging_images/r_1.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_2.png:recovery/root/res/offmode_charging_images/r_2.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_3.png:recovery/root/res/offmode_charging_images/r_3.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_4.png:recovery/root/res/offmode_charging_images/r_4.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_5.png:recovery/root/res/offmode_charging_images/r_5.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_6.png:recovery/root/res/offmode_charging_images/r_6.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_7.png:recovery/root/res/offmode_charging_images/r_7.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_8.png:recovery/root/res/offmode_charging_images/r_8.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_9.png:recovery/root/res/offmode_charging_images/r_9.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/r_percent.png:recovery/root/res/offmode_charging_images/r_percent.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_0.png:recovery/root/res/offmode_charging_images/w_0.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_1.png:recovery/root/res/offmode_charging_images/w_1.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_2.png:recovery/root/res/offmode_charging_images/w_2.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_3.png:recovery/root/res/offmode_charging_images/w_3.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_4.png:recovery/root/res/offmode_charging_images/w_4.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_5.png:recovery/root/res/offmode_charging_images/w_5.png \
	$(LOCAL_PATH)/recovery/offmode_charging_images/w_6.png:recovery/root/res/offmode_charging_images/w_6.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_7.png:recovery/root/res/offmode_charging_images/w_7.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_8.png:recovery/root/res/offmode_charging_images/w_8.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_9.png:recovery/root/res/offmode_charging_images/w_9.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/w_percent.png:recovery/root/res/offmode_charging_images/w_percent.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_0.png:recovery/root/res/offmode_charging_images/y_0.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_1.png:recovery/root/res/offmode_charging_images/y_1.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_2.png:recovery/root/res/offmode_charging_images/y_2.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_3.png:recovery/root/res/offmode_charging_images/y_3.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_4.png:recovery/root/res/offmode_charging_images/y_4.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_5.png:recovery/root/res/offmode_charging_images/y_5.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_6.png:recovery/root/res/offmode_charging_images/y_6.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_7.png:recovery/root/res/offmode_charging_images/y_7.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_8.png:recovery/root/res/offmode_charging_images/y_8.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_9.png:recovery/root/res/offmode_charging_images/y_9.png \
        $(LOCAL_PATH)/recovery/offmode_charging_images/y_percent.png:recovery/root/res/offmode_charging_images/y_percent.png

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_b2wlj
PRODUCT_DEVICE := b2wlj
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTL23
