# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit python eutils

DESCRIPTION="The flexible build system"
HOMEPAGE="http://code.google.com/p/waf/"
SRC_URI="http://ftp.waf.io/pub/release/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

src_prepare() {
        cp "${FILESDIR}"/avr-gcc.py "${FILESDIR}"/graphilique.py "${S}/waflib/extras" || die "preparing custom tools failed"
}

src_configure() {
        ./waf-light configure
}

src_compile() {
        ./waf-light --tools="avr-gcc,graphilique,fluid,objcopy,compat15" || die "building waf failed"
}

src_install() {
        mkdir -p "${D}/usr/bin/" && cp -v "${S}"/waf "${D}/usr/bin/" || die "waf installation failed"
        cd "${D}/usr/bin" && ./waf --version || die "waf unpacking image failed"
}
