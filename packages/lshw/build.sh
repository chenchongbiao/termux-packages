TERMUX_PKG_HOMEPAGE=https://github.com/lyonel/lshw
TERMUX_PKG_DESCRIPTION="A small tool to provide detailed information on the hardware configuration of the machine"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=B.02.20
TERMUX_PKG_SRCURL=git+https://github.com/lyonel/lshw
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_BUILD_DEPENDS="libandroid-glob, gettext"
# TERMUX_PKG_DEPENDS=""
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="
VERSION=${TERMUX_PKG_VERSION}
NO_VERSION_CHECK=1
"
