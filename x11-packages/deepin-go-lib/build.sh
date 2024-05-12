TERMUX_PKG_HOMEPAGE=http://www.deepin.org/
TERMUX_PKG_DESCRIPTION="Go bindings for Deepin Desktop Environment development DLib is a set of Go bindings/libraries for DDE development."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="bluesky <chenchongbiao@deepin.org>"
TERMUX_PKG_VERSION=6.0.7
TERMUX_PKG_SRCURL="https://github.com/linuxdeepin/go-lib/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=ac161206e4c7efac262866cf620ea5e05850d81bd5d6cb1fd867e4da2c7dbacb
TERMUX_PKG_DEPENDS="pkg-config, gdk-pixbuf, libcanberra, gtk3, iso-codes, dbus, libnss"

termux_step_configure() {
	termux_setup_golang
	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "${GOPATH}/src/github.com/linuxdeepin/"
	cp -a "${TERMUX_PKG_SRCDIR}" "${GOPATH}/src/github.com/linuxdeepin/go-lib"

	cd src/github.com/linuxdeepin/go-lib
	rm -rf gdkpixbuf imgutil users/passwd users/shadow pam sound asound sound_effect

	go get github.com/smartystreets/goconvey
	go get github.com/howeyc/fsnotify
	go get gopkg.in/check.v1
	go get github.com/linuxdeepin/go-x11-client@v0.0.0-20220830090948-78fe92b727bb
	go get github.com/godbus/dbus/v5
	go get github.com/linuxdeepin/go-gir@v0.0.0-20230331033513-a8d7a9e89f9b
}

termux_step_make_install() {
	termux_setup_golang
	TERMUX_GODIR=$TERMUX_PREFIX/lib/go
	mkdir -p $TERMUX_GODIR/src
	cp -Rf src/* $TERMUX_GODIR/src
}
