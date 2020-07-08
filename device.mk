#
# Copyright (C) 2016 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hdrhax:$(TARGET_COPY_OUT_VENDOR)/etc/hdrhax

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/calib.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/display/calib.cfg

# Healthd packages
PRODUCT_PACKAGES += \
    charger_res_images \
    charger_animation

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts_T100_touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel_mxt_ts_T100_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/Headset.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Headset.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    nfc_nci.bcm2079x.default

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl-bcm \
    android.hardware.nfc@1.0-service

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20795a20.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm-20795a20.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/nfcee_access.xml

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad.calib.data=/data/misc/display/calib.cfg \
    ro.qcom.ad=1 \
    ro.qualcomm.cabl=2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.target.rc \
    init.recovery.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Touchscreen
PRODUCT_PACKAGES += \
    init.atmel_ts.sh
