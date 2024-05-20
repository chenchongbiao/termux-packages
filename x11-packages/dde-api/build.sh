TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="Go-lang bingdings for dde-daemon DDE API provides some dbus interfaces that is used for screen zone detecting, thumbnail generating, sound playing, etc"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION="6.0.9"
TERMUX_PKG_SRCURL="https://github.com/linuxdeepin/dde-api/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=0200f29982461a0ae2ef7cbb888526efca73a7ed975ee2e93b1e79d163b3d8ce
TERMUX_PKG_DEPENDS="golang, coreutils, fontconfig, libc++, libcairo, freetype, glib, gtk3, poppler, librsvg, libx11, libxcursor, libxfixes, deepin-go-lib, valac, bionic-host"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX} \
"

termux_step_configure() {
	termux_setup_golang
	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "${GOPATH}/src/github.com/linuxdeepin/"
	cp -a "${TERMUX_PKG_SRCDIR}" "${GOPATH}/src/github.com/linuxdeepin/${TERMUX_PKG_NAME}"

	cd src/github.com/linuxdeepin/${TERMUX_PKG_NAME}
	rm -rf graphic

	go get gopkg.in/alecthomas/kingpin.v2@v2.2.6
	go get github.com/linuxdeepin/go-x11-client@v0.0.0-20230131052004-7503e2337ee1
	go get -u -v github.com/mattn/go-sqlite3@v1.14.16
}

termux_step_make() {
	cd src/github.com/linuxdeepin/${TERMUX_PKG_NAME}
	ls -al
	make GOPATH=$TERMUX_PKG_BUILDDIR
}

termux_step_make_install() {
	make install GOPATH=$TERMUX_PKG_BUILDDIR
}