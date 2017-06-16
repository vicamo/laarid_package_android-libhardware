# Copyright 2006 The Android Open Source Project

# libandroid-hardware.la
# ----------------------
lib_LTLIBRARIES += \
	%reldir%/libandroid-hardware.la

%canon_reldir%_libandroid_hardware_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(CUTILS_CFLAGS) \
	-DHAL_LIBRARY_PATHS=\"$(libdir)/hw\",\"/opt/lib/$(host_cpu)-$(host_os)/hw\"
%canon_reldir%_libandroid_hardware_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)
%canon_reldir%_libandroid_hardware_la_LIBADD = \
	$(LIBADD_DLOPEN) \
	$(LOG_LIBS) \
	$(CUTILS_LIBS)
%canon_reldir%_libandroid_hardware_la_SOURCES = \
	%reldir%/hardware.c

if WITH_QEMU
%canon_reldir%_libandroid_hardware_la_CPPFLAGS += \
	-DQEMU_HARDWARE
endif

pkgconfig_DATA += \
	android-hardware-$(LAARID_API_VERSION).pc
