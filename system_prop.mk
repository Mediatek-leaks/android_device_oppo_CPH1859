#
# Copyright 2020 The Android Open Source Project
# Copyright (C) 2020 The LineageOS Project
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

#
# System Properties for Realme 1: CPH1859
#

# LCD density
ro.sf.lcd_density=480

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
persist.camera.HAL3.enabled=1

# MediaTek
ro.mediatek.chip_ver=S01
ro.mediatek.platform=MT6771
ro.mediatek.wlan.p2p=1
ro.mediatek.wlan.wsc=1

# Graphics
ro.opengles.version=196610
debug.sf.disable_backpressure=1

# Telephony
ro.telephony.default_network=10,10
ro.telephony.sim.count=2
telephony.lteOnCdmaDevice=1

# ipv6
ro.mtk_tetheringipv6_support=1

# Playstore
ro.com.google.clientidbase=android-oppo

# DRM
ro.mtk_cta_drm_support=1
ro.mtk_widevine_drm_l3_support=1
drm.service.enabled=true

# Power off opt in IPO
sys.ipo.pwrdncap=2

# Storage
ro.sys.usb.storage.type=mtp,adb

# Ril
rild.libpath=mtk-ril.so
rild.libargs=-d /dev/ttyC0
rild.mark_switchuser=0
ril.read.imsi=1

# WFD
wfd.dummy.enable=1

# WiFi
mediatek.wlan.chip=CONSYS_MT6771
mediatek.wlan.module.postfix=_consys_mt6771
ro.mediatek.wlan.wsc=1
ro.mediatek.wlan.p2p=1
mediatek.wlan.ctia=0
wifi.tethering.interface=ap0
wifi.interface=wlan0
wifi.direct.interface=p2p0

# Adding for Debugging
persist.service.adb.enable=1
persist.service.debuggable=1
persist.sys.usb.config=mtp,adb

# Performance
ro.mtk_perf_simple_start_win=1
ro.mtk_perf_fast_start_win=1
ro.mtk_perf_response_time=1

# Video Acceleration Enabled And HW debugging
video.accelerate.hw=1
debug.sf.hw=1
debug.performance.tuning=1
debug.egl.profiler=1 
debug.egl.hw=1
debug.composition.type=gpu 

#VoLTE
persist.vendor.volte_support=0
persist.vendor.mtk.volte.enable=0

# Dex2oat
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7
    
#SurfaceFlinger
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000
