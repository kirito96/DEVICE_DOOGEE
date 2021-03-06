########################################################
# GAPPS apps
GAPPS_VARIANT := pico
GAPPS_FORCE_PACKAGE_OVERRIDES := true
#GAPPS_FORCE_MATCHING_DPI := true
#DONT_DEXPREOPT_PREBUILTS := true
$(call inherit-product-if-exists, vendor/google/build/opengapps-packages.mk)

PRODUCT_PACKAGES += \
                    GoogleTTS \
                    GoogleHome \
                    CalendarGooglePrebuilt \
                    LatinImeGoogle \
                    Chrome \
                    Velvet

ifneq ($(WITH_DEXPREOPT), yes)

#PRODUCT_PACKAGES += \
#                    Music2 \
#                    YouTube
#                    Maps \
#                    PrebuiltGmail \
#                    Newsstand \
#                    Drive \
#                    TranslatePrebuilt
endif

PRODUCT_PACKAGES += \
	busybox \
	ViPER4Android \
	PerformanceControl

#	QuickSearchBox \
#	PicoTts \
#	Browser \
#	LatinIME \
#	Email \
#	Calendar \
#	MtkQuickSearchBox \
#	MtkCalendar \
#	MtkBrowser \
#       SetupWizard \
#       webview \
#	music
PRODUCT_PACKAGES := $(filter-out SetupWizard, $(PRODUCT_PACKAGES))

ifeq (5x,$(THIS_ANDROID_VERSION))
PRODUCT_PACKAGES := $(filter-out Chrome, $(PRODUCT_PACKAGES))
endif

