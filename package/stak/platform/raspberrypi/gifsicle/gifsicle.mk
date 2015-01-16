#############################################################
#
# gifsicle
#
#############################################################

GIFSICLE_VERSION = 6b7bd7812c4010464acdfcc4f896e8857fc02ec0
GIFSICLE_SITE = $(call github,kohler,gifsicle,$(GIFSICLE_VERSION))
GIFSICLE_LICENSE = GPLv2
GIFSICLE_LICENSE_FILES = LICENCE


define GIFSICLE_BUILD_CMDS
    cd $(@D); $(AUTORECONF) -i; ./configure
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define GIFSICLE_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/src/gifsicle $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))