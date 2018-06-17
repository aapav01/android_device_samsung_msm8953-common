#
# Copyright (C) 2017 The LineageOS Project
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
#

COMMON_PATH := device/samsung/msm8953-common

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8953 \
    audio_policy.default.so \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    libqcomvisualizer \
    libtinycompress \
    libtinyalsa

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl

# Audio configuration files
PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/aanc_tuning_mixer.txt:system/vendor/etc/aanc_tuning_mixer.txt \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/audio_platform_info_extcodec.xml:system/vendor/etc/audio_platform_info_extcodec.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/audio_policy.conf:system/vendor/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_mtp.xml:system/vendor/etc/mixer_paths_mtp.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_sku3.xml:system/vendor/etc/mixer_paths_qrd_sku3.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_skuh.xml:system/vendor/etc/mixer_paths_qrd_skuh.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_skuhf.xml:system/vendor/etc/mixer_paths_qrd_skuhf.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_skui.xml:system/vendor/etc/mixer_paths_qrd_skui.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_skum.xml:system/vendor/etc/mixer_paths_qrd_skum.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_qrd_skun.xml:system/vendor/etc/mixer_paths_qrd_skun.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_skuk.xml:system/vendor/etc/mixer_paths_skuk.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_wcd9306.xml:system/vendor/etc/mixer_paths_wcd9306.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_wcd9326.xml:system/vendor/etc/mixer_paths_wcd9326.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_wcd9330.xml:system/vendor/etc/mixer_paths_wcd9330.xml \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/mixer_paths_wcd9335.xml:system/vendor/etc/mixer_paths_wcd9335.xml

# Audio XML configuration files
PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8953/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

# Samsung Camera Libraries
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    camera.msm8953

# Bluetooth
PRODUCT_PACKAGES += \
    javax.btobex \
    libbt-vendor

PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    AdvancedDisplay \
    copybit.msm8953 \
    gralloc.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    libgenlock \
    libdisplayconfig \
    liboverlay \
    libqdMetaData

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Filesystem
PRODUCT_PACKAGES += \
    fs_config_files

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    gps.msm8953 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.rilchip.rc \
    init.samsung.rc \
    init.target.rc \
    init.wifi.rc \
    ueventd.qcom.rc \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8953

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/ft5x06_ts.kl:system/vendor/usr/keylayout/ft5x06_ts.kl \
    $(COMMON_PATH)/keylayout/gpio-keys.kl:system/vendor/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/keylayout/sec_touchkey.kl:system/vendor/usr/keylayout/sec_touchkey.kl \
    $(COMMON_PATH)/keylayout/synaptics_dsx.kl:system/vendor/usr/keylayout/synaptics_dsx.kl \
    $(COMMON_PATH)/keylayout/synaptics_dsxv26.kl:system/vendor/usr/keylayout/synaptics_dsxv26.kl \
    $(COMMON_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/vendor/usr/keylayout/synaptics_rmi4_i2c.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.MSM8953

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    libextmedia_jni \
    libdashplayer \
    libdivxdrmdecrypt \
    libdrmclearkeyplugin \
    libstagefrighthw

# OpenMAX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libOmxVdpp

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/vendor/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/vendor/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml

# Power configuration
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# QPerformance
PRODUCT_BOOT_JARS += QPerformance

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service-qti

###
# Radio
###
# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    librmnetctl \
    rmnetcli \
    libxml2 \
    libtinyxml

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Samsung
PRODUCT_PACKAGES += \
    libsecnativefeature \
    libsecril-client

# Shim
PRODUCT_PACKAGES += \
    libsec-ims_shim

# Security configuration file
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/sec_config:system/vendor/etc/sec_config \
    $(COMMON_PATH)/configs/sec_config_oem:system/vendor/etc/sec_config_oem

###

# WiDi
PRODUCT_PACKAGES += \
    com.android.media.remotedisplay \
    com.android.media.remotedisplay.xml

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libwcnss_qmi \
    libwifi-hal-qcom \
    dhcpcd.conf \
    macloader \
    wcnss_service \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wifi configuration files
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/wifi/hostapd.accept:system/vendor/etc/hostapd/hostapd.accept \
    $(COMMON_PATH)/configs/wifi/hostapd.deny:system/vendor/etc/hostapd/hostapd.deny \
    $(COMMON_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(COMMON_PATH)/configs/wifi/prima/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    $(COMMON_PATH)/configs/wifi/prima/WCNSS_qcom_cfg.ini:system/vendor/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(COMMON_PATH)/configs/wifi/prima/WCNSS_qcom_cfg.ini:system/vendor/wifi/WCNSS_qcom_cfg.ini \
    $(COMMON_PATH)/configs/wifi/prima/WCNSS_qcom_wlan_nv.bin:system/vendor/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(COMMON_PATH)/seccomp_policy/mediaextractor-seccomp.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# System Prop
include $(COMMON_PATH)/system_prop.mk

# Include proprietary blobs
$(call inherit-product, vendor/samsung/msm8953-common/msm8953-common-vendor.mk)

