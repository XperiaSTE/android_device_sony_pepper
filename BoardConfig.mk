# Architecture
TARGET_ARCH_LOWMEM := true

# Inherit from the proprietary version
-include vendor/sony/pepper/BoardConfigVendor.mk


# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk


# Platform specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/pepper/include


# Kernel specific configurations
TARGET_KERNEL_CONFIG := xperiasola_defconfig
BOARD_CUSTOM_BOOTIMG := true
TARGET_NO_SEPARATE_RECOVERY := true

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_RECOVERY_FSTAB := device/sony/pepper/config/fstab.st-ericsson


# Specific flag for LED bar notification
COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION


# Device identifiers for updates
TARGET_OTA_ASSERT_DEVICE := MT27i,MT27a,pepper


# Sensors
SOMC_CFG_SENSORS := true
SOMC_CFG_SENSORS_COMPASS_LSM303DLHC := yes
SOMC_CFG_SENSORS_ACCELEROMETER_LSM303DLHC_LT := yes
SOMC_CFG_SENSORS_LIGHT_AS3676 := yes
SOMC_CFG_SENSORS_LIGHT_AS3676_PATH := "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040"
SOMC_CFG_SENSORS_LIGHT_AS3676_MAXRANGE := 10800
SOMC_CFG_SENSORS_PROXIMITY_APDS9702 := yes
