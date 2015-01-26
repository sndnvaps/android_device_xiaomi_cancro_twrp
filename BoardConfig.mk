#
# Copyright (C) 2014 The Mokee OpenSource Project
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

BOARD_VENDOR := xiaomi

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_KERNEL_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_ARMV7A := true
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
#ARCH_ARM_HAVE_TLS_REGISTER := true
#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_NAME := msm8974
TARGET_BOOTLOADER_BOARD_NAME := MSM8974


BOARD_KERNEL_CMDLINE := ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --dt device/xiaomi/cancro/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x01E00000

TARGET_PREBUILT_KERNEL := device/xiaomi/cancro/kernel
BOARD_KERNEL_SEPARATED_DT := true

BOARD_USES_LEGACY_MMAP := true
MALLOC_IMPL := dlmalloc

# Init
TARGET_NO_INITLOGO := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216  #16M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #16M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640	#640M system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912	#6G data
BOARD_FLASH_BLOCK_SIZE := 131072

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON  := true
BOARD_SUPPRESS_EMMC_WIPE    := true
BOARD_HAS_LARGE_FILESYSTEM  := true
TARGET_USERIMAGES_USE_EXT4  := true

BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := device/xiaomi/cancro/recovery/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT 	:= "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#TARGET_RECOVERY_INITRC := device/xiaomi/cancro/recovery/init.rc

#TWRP config
TW_CUSTOM_THEME := device/xiaomi/cancro/recovery/twres

DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true

TW_INCLUDE_L_CRYPTO := true
TW_NO_USB_STORAGE := false
BOARD_HAS_NO_REAL_SDCARD := true

TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 160

TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true

TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true

#TWRP end

