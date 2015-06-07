# Inherit common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full.mk)

# Required AOSP packages
PRODUCT_PACKAGES += \
    LatinIME

# Include AOSP LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/aosp/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/aosp/config/telephony.mk)
