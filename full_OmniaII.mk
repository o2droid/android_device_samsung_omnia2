# Inherit AOSP device configuration for passion.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/OmniaII/prelink-linux-arm-OmniaII.map

DEVICE_PACKAGE_OVERLAYS += device/samsung/OmniaII/overlay

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 240 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Repeat ring tone on incoming calls
PRODUCT_PROPERTY_OVERRIDES += \
ro.telephony.call_ring.multiple=false

#
# GPS config & application from sucka
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/gps/gps.conf:system/etc/gps.conf \
    device/samsung/OmniaII/prebuilt/OmniaII/gps/LBSModeApp.apk:system/app/LBSModeApp.apk

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml 

# media config xml file
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/media_profiles.xml:system/etc/media_profiles.xml

#
# Wifi
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/libwlmlogger.so:system/lib/libwlmlogger.so \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/bcm_supp.conf:system/etc/bcm_supp.conf \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/wifi.conf:system/etc/wifi.conf \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/wifi.conf:system/etc/nvram.txt \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/OmniaII/prebuilt/OmniaII/wifi/wlservice:system/bin/wlservice

#
# Firmware
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/firmware/libertas/gspi8686_hlp.bin:system/lib/firmware/libertas/gspi8686_hlp.bin \
    device/samsung/OmniaII/prebuilt/OmniaII/firmware/libertas/gspi8686_v9.bin:system/lib/firmware/libertas/gspi8686.bin 

#
# Display (2D)
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/gralloc-libs/libs3c2drender.so:system/lib/libs3c2drender.so \
    device/samsung/OmniaII/prebuilt/OmniaII/gralloc-libs/libsavscmn.so:system/lib/libsavscmn.so \
    device/samsung/OmniaII/prebuilt/OmniaII/gralloc-libs/hw/gralloc.GT-I8000.so:system/lib/hw/gralloc.GT-I8000.so

#
# Display (3D)
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/fimg-libs/egl.cfg:system/lib/egl/egl.cfg

#
# 3D GFX
#
ifdef OMNIAII_WITH_3D
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_download.so:system/lib/libopencore_download.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_downloadreg.so:system/lib/libopencore_downloadreg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_player.so:system/lib/libopencore_player.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libskia.so:system/lib/libskia.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libskiagl.so:system/lib/libskiagl.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libstagefright_color_conversion.so:system/lib/libstagefright_color_conversion.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libsurfaceflinger.so:system/lib/libsurfaceflinger.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/libsurfaceflinger_client.so:system/lib/libsurfaceflinger_client.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/egl/libChunkAlloc.so:system/lib/egl/libChunkAlloc.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/egl/libEGL_fimg.so:system/lib/egl/libEGL_fimg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/egl/libGLESv1_CM_fimg.so:system/lib/egl/libGLESv1_CM_fimg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/3dpack/egl/libGLESv2_fimg.so:system/lib/egl/libGLESv2_fimg.so
else
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/fimg-libs/libChunkAlloc.so:system/lib/egl/libChunkAlloc.so \
    device/samsung/OmniaII/prebuilt/OmniaII/fimg-libs/libEGL_fimg.so:system/lib/egl/libEGL_fimg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/fimg-libs/libGLESv1_CM_fimg.so:system/lib/egl/libGLESv1_CM_fimg.so \
    device/samsung/OmniaII/prebuilt/OmniaII/fimg-libs/libGLESv2_fimg.so:system/lib/egl/libGLESv2_fimg.so
endif

#
# Keys
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/keys/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
    device/samsung/OmniaII/prebuilt/OmniaII/keys/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
    device/samsung/OmniaII/prebuilt/OmniaII/keys/s3c-keypad-rev0020.kl:system/usr/keylayout/s3c-keypad-rev0020.kl \
    device/samsung/OmniaII/prebuilt/OmniaII/keys/s3c-keypad-rev0020.kcm.bin:system/usr/keychars/s3c-keypad-rev0020.kcm.bin \
    device/samsung/OmniaII/prebuilt/OmniaII/keys/sec_headset.kl:system/usr/keylayout/sec_headset.kl 

#
# Only one left: copybit
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/hw/copybit.GT-I8000.so:system/lib/hw/copybit.GT-I8000.so

#
# akmd
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/akmd/akmd2:system/bin/akmd2

#
# Vold
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/vold/vold.fstab:system/etc/vold.fstab

#
# RIL
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/ril/drexe:system/bin/drexe \
    device/samsung/OmniaII/prebuilt/OmniaII/ril/efsd:system/bin/efsd \
    device/samsung/OmniaII/prebuilt/OmniaII/ril/rilclient-test:system/bin/rilclient-test \
    device/samsung/OmniaII/prebuilt/OmniaII/ril/libsec-ril.so:system/lib/libsec-ril.so

#
# GSM APN list
#
PRODUCT_COPY_FILES += \
    vendor/OmniaII/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

#
# Audio
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/audio/asound.conf:system/etc/asound.conf

#
# SamdroidTools
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/samdroidtools/SamdroidTools.apk:system/app/SamdroidTools.apk \
    device/samsung/OmniaII/prebuilt/OmniaII/samdroidtools/libsamdroidtools.so:system/lib/libsamdroidtools.so

#
# Android Treminal app
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/AndroidTerm/AndroidTerm.apk:system/app/AndroidTerm.apk


#
# dirty hack for OpenVPN
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/vpn/openvpn.apk:system/app/OpenVPN.apk

#
# serviceModeApp
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/servicemodeapp/serviceModeApp.apk:system/app/serviceModeApp.apk

#
# Bluetooth
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/bt/bluez.psr:system/etc/bluetooth/bluez.psr \
    device/samsung/OmniaII/prebuilt/OmniaII/bt/bt_start.sh:system/etc/bluetooth/bt_start.sh

#
# system/sd
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/placeholder/.placeholder:system/sd/.placeholder

#
# system/etc/fstab
#
PRODUCT_COPY_FILES += \
    device/samsung/OmniaII/prebuilt/OmniaII/etc/fstab:system/etc/fstab

#
# Setup device specific product configuration.
#
PRODUCT_NAME := full_OmniaII
PRODUCT_DEVICE := GT-I8000
PRODUCT_MODEL := GT-I8000
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
