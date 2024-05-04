TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="Deepin Tool Kit Core library DtkCore is base library of Deepin Qt/C++ applications."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=5.6.22
TERMUX_PKG_SRCURL="https://github.com/linuxdeepin/dtkcore/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=3c257fbf3389d2c8b65f7c94ccd4acd26866fb8eb6e1b8e8ff5df6e8bdeb16a7
TERMUX_PKG_BUILD_DEPENDS="cmake, pkg-config, glib, fmt, qt5-qtbase, gsettings-qt, libuchardet, libspdlog, lshw"
TERMUX_PKG_DEPENDS="libdtkcommon"
# TERMUX_PKG_PYTHON_COMMON_DEPS="packaging"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX} \
-DBUILD_DOCS=OFF
"

termux_step_post_massage() {
    # rm -rf lib
    echo "1"
}
#  libgsettings-qt1 (>= 0.1+14.04.20140408), libqt5core5a (>= 5.15.1), libqt5dbus5 (>= 5.14.1), libqt5xml5 (>= 5.0.2), libspdlog1.12-fmt10, libstdc++6 (>= 13.1), libsystemd0, qtbase-abi-5-15-8, lshw