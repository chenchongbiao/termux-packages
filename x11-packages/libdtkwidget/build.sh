TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="DtkGui is base library of Deepin Qt/C++ applications."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=5.6.23
TERMUX_PKG_SRCURL="https://github.com/linuxdeepin/dtkwidget/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=3cc28858b6d6b4deec14e32557ef17740b2a496f51bf0a828d97792d78d2f41d
TERMUX_PKG_BUILD_DEPENDS="cmake, pkg-config, qt5-qtbase, qt5-qttools, qt5-qtx11extras, graphviz, librsvg, freeimage, libxext, fontconfig, glib-cross, freetype, libxrender, libdtkcore, libdtkgui, libxi, startup-notification, qt5-qtsvg, cups"
TERMUX_PKG_DEPENDS="libdtkgui, libdtkcore, libdtkcommon"
# TERMUX_PKG_PYTHON_COMMON_DEPS="packaging"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX} \
-DBUILD_DOCS=OFF
-DBUILD_PLUGINS=OFF
-DBUILD_EXAMPLES=OFF
"
