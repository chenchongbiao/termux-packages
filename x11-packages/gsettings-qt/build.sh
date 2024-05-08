TERMUX_PKG_HOMEPAGE=https://gitlab.com/ubports/core/gsettings-qt
TERMUX_PKG_DESCRIPTION="This package contains the development files needed to build applications using the GSettings Qt library."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=0.3.0
TERMUX_PKG_SRCURL=git+https://github.com/deepin-community/gsettings-qt
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_BUILD_DEPENDS="qt5-qmake, qt5-qtdeclarative, qt5-qtbase, glib, glib-cross, xorg-xauth, xorg-server-xvfb"
# TERMUX_PKG_DEPENDS=""
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
PKG_CONFIG=pkg-config
PREFIX=$TERMUX_PREFIX
"

termux_step_configure() {
	qmake ${TERMUX_PKG_EXTRA_CONFIGURE_ARGS}
	#	-spec "${TERMUX_PREFIX}/lib/qt/mkspecs/termux-cross" \
}
