# Copyright 2006 The Android Open Source Project

ACLOCAL_AMFLAGS = -I m4 ${ACLOCAL_FLAGS}

# Distribution
# ------------
EXTRA_DIST = \
    MODULE_LICENSE_APACHE2 \
    NOTICE
BUILT_SOURCES =
CLEANFILES =
DISTCLEANFILES =
MAINTAINERCLEANFILES = \
	$(GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL) \
	$(GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL) \
	$(GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN)

# We're running CI in docker, which reports host architecture as host,
# not the docker image architecture as we expected, so specifying the
# host/build information is necessary here.
DISTCHECK_CONFIGURE_FLAGS = \
	--host=$(host) \
	--build=$(build) \
	--disable-dependency-tracking \
	--disable-maintainer-mode

GITIGNOREFILES = \
	$(DIST_ARCHIVES) \
	build \
	debian

# Common/global flags
# -------------------
AM_CPPFLAGS = \
	-include config.h \
	-I$(top_srcdir)/include

AM_CFLAGS = \
	-Wall -Werror \
	-std=gnu99

AM_CXXFLAGS = \
	-Wall -Werror \
	-std=gnu++11

libtool_opts = \
	-version-info $(LT_VERSION_INFO) \
	-export-dynamic \
	-rpath $(libdir)

lib_hwdir = $(libdir)/hw

# Various build targets
# ---------------------
lib_LTLIBRARIES =
lib_hw_LTLIBRARIES =
pkgconfig_DATA =

include $(srcdir)/include/hardware/Makefile.inc
include $(srcdir)/Android.mk

include $(srcdir)/modules/audio/Android.mk
include $(srcdir)/modules/audio_remote_submix/Android.mk # libnbaio, libmedia_helper
include $(srcdir)/modules/camera/Android.mk # libcamera_metadata
include $(srcdir)/modules/consumerir/Android.mk
include $(srcdir)/modules/fingerprint/Android.mk
include $(srcdir)/modules/gralloc/Android.mk
include $(srcdir)/modules/hwcomposer/Android.mk # libEGL
include $(srcdir)/modules/input/Android.mk # libhardware_legacy
include $(srcdir)/modules/local_time/Android.mk
include $(srcdir)/modules/nfc/Android.mk
include $(srcdir)/modules/nfc-nci/Android.mk
include $(srcdir)/modules/power/Android.mk
include $(srcdir)/modules/radio/Android.mk # libradio_metadata
include $(srcdir)/modules/sensors/Android.mk
include $(srcdir)/modules/soundtrigger/Android.mk
include $(srcdir)/modules/thermal/Android.mk
include $(srcdir)/modules/tv_input/Android.mk
include $(srcdir)/modules/usbaudio/Android.mk # libtinyalsa libaudioutils libalsautils
include $(srcdir)/modules/usbcamera/Android.mk # libcamera_metadata
include $(srcdir)/modules/vehicle/Android.mk
include $(srcdir)/modules/vibrator/Android.mk
include $(srcdir)/modules/vr/Android.mk

# PKG-CONFIG data files
# ---------------------
pkgconfigdir = $(libdir)/pkgconfig
$(pkgconfig_DATA): config.status
EXTRA_DIST += $(pkgconfig_DATA:.pc=.pc.in)
DISTCLEANFILES += \
	$(pkgconfig_DATA)

CLEANFILES += $(BUILT_SOURCES)
GITIGNOREFILES += $(BUILT_SOURCES)
-include $(top_srcdir)/git.mk
