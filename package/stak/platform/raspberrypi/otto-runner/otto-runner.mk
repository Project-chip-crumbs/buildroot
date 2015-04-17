#############################################################
#
# otto-runner
#
#############################################################

OTTO_RUNNER_VERSION = 0652c58d21c3d4ed4ab04028e58eb943d22fd36c
OTTO_RUNNER_SITE = git@github.com:NextThingCo/otto-runner.git
OTTO_RUNNER_SITE_METHOD = git

OTTO_RUNNER_LICENSE = GPLv2
OTTO_RUNNER_LICENSE_FILES = LICENCE
OTTO_RUNNER_CONF_OPTS = -DVC_SDK=$(STAGING_DIR)/opt/vc

define OTTO_RUNNER_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/otto-runner $(TARGET_DIR)/usr/bin
endef

$(eval $(cmake-package))
