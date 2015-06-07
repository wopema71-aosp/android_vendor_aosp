# Inherit common AOSP stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Include AOSP audio files
include vendor/aosp/config/aosp_audio.mk

# Optional AOSP packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

# Extra tools in AOSP
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
