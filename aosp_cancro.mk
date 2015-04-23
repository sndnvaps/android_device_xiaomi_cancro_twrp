# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TARGET_BOOTANIMATION_NAME := 1080

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions

PRODUCT_NAME := aosp_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Aosp on cancro
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cancro \
    TARGET_DEVICE=cancro \
    BUILD_FINGERPRINT=Xiaomi/cancro/cancro:4.4.4/KTU84P/5.1.23:user/release-keys \
    PRIVATE_BUILD_DESC="cm_cancro-userdebug 4.4.4 KTU84Q 5.1.23 release-keys"

