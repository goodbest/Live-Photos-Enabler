include theos/makefiles/common.mk

TWEAK_NAME = LivePhotosEnabler
LivePhotosEnabler_FILES = Tweak.xm
LivePhotosEnabler_LDFLAGS = -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Camera"
