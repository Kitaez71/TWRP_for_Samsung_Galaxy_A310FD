# Platform
TARGET_BOARD_PLATFORM := universal7580

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7580

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/a3xeltexx/kernel
TARGET_PREBUILT_DTB := device/samsung/a3xeltexx/dt.img
BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
#BOARD_KERNEL_BOARD := SRPOJ08A000RU
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/a3xeltexx/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
#BOARD_HAS_NO_MISC_PARTITION := false
BOARD_BOOTIMAGE_PARTITION_SIZE :=0x002000000		# 33554432=32MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002600000	# 39845888=38MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x00C800000		# 209715200=200MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0BB800000		# 3145728000=3GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2CF3FB000	# 0x2CF400000(12067012608) - 0x000004000(footer=16384)=12066992128=12GB
BOARD_FLASH_BLOCK_SIZE := 131072

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
#HAVE_SELINUX := true
#BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := device/samsung/a3xeltexx/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_MISC_PARTITION := false
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_THEME := portrait_hdpi
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true 
TW_FLASH_FROM_STORAGE := true
TW_IGNORE_MAJOR_AXIS_0 := false
TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INTERNAL_STORAGE_PATH := /internal_sd
#TW_INTERNAL_STORAGE_MOUNT_POINT := internal_sd
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEVICE_VERSION := Kitaez71
#TW_NO_BATT_PERCENT := false

# Init properties from bootloader version, ex. model info
#TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_a3xelte
#TARGET_RECOVERY_DEVICE_MODULES := libinit_a3xelte
#TARGET_LIBINIT_DEFINES_FILE := device/samsung/a3xeltexx/init/init_a3xelte.cpp
#TARGET_INIT_VENDOR_LIB := libinit_sec
#TARGET_RECOVERY_DEVICE_MODULES := libinit_sec
#TARGET_LIBINIT_DEFINES_FILE := device/samsung/a3xeltexx/init/init_sec.cpp

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13580000.usb/gadget/lun0/file"