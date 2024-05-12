TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="DtkGui is base library of Deepin Qt/C++ applications."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=1.5.2
TERMUX_PKG_SRCURL="https://github.com/linux-pam/linux-pam/releases/download/v${TERMUX_PKG_VERSION}/Linux-PAM-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=e4ec7131a91da44512574268f493c6d8ca105c87091691b8e9b56ca685d4f94d
TERMUX_PKG_BUILD_DEPENDS="zig"
# TERMUX_PKG_DEPENDS="libdtkcore, libdtkcommon"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-static --enable-shared \
--libdir=/lib/${TERMUX_ARCH} \
--enable-isadir=${TERMUX_PREFIX}/lib/security \
--disable-nis \
"

# termux_step_make() {
# 	ls -al
# 	./autogen.sh
# 	make
# }

# termux_step_make_install() {
# 	make install
# }