TERMUX_PKG_HOMEPAGE=https://github.com/kdabir/has
TERMUX_PKG_DESCRIPTION="has checks presence of various command line tools and their versions on the path"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.5.1"
TERMUX_PKG_SRCURL=$TERMUX_PKG_HOMEPAGE/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=9693e50673fffcfdfe0eea2b9c3c4455c5c46c4eee390bd3cffb3e51bbfc291b
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="bash, ncurses-utils"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make() {
	return
}

termux_step_make_install() {
	local bin="$(basename $TERMUX_PKG_HOMEPAGE)"
	install -D "$bin" -t "$TERMUX_PREFIX/bin"
}
