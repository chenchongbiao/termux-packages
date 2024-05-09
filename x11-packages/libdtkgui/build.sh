TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="DtkGui is base library of Deepin Qt/C++ applications."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=5.6.22
TERMUX_PKG_SRCURL="https://github.com/linuxdeepin/dtkgui/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=571e85483155fa6a49554b683cce8ead370ffd2e037344e7bc38780d732f532f
TERMUX_PKG_BUILD_DEPENDS="cmake, qt5-qtbase, graphviz, librsvg, freeimage"
TERMUX_PKG_DEPENDS="libdtkcore, libdtkcommon"
# TERMUX_PKG_PYTHON_COMMON_DEPS=""
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX} \
-DBUILD_DOCS=OFF
"
