# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

lib_hw_LTLIBRARIES += \
    %reldir%/vehicle.default.la

%canon_reldir%_vehicle_default_la_SOURCES = \
    %reldir%/vehicle.c \
    %reldir%/timeUtil.cpp
%canon_reldir%_vehicle_default_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS)
%canon_reldir%_vehicle_default_la_CFLAGS = \
    $(AM_CFLAGS) \
    -Wno-unused-function
%canon_reldir%_vehicle_default_la_LIBADD = \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS)
%canon_reldir%_vehicle_default_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    -module -avoid-version -shared
