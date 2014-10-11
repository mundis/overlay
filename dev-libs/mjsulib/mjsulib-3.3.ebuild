# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
DESCRIPTION=""
SRC_URI="https://github.com/mundis/slap/raw/master/original/${PN}-${PV}.tar.gz"

SLOT="0"
LICENSE="GPL"
KEYWORDS="~x86 ~amd64"
DEPEND="sys-apps/man-db"
RDEPEND="${DEPEND}"


src_unpack() {
	unpack ${P}.tar.gz
}

src_configure() {
	econf --prefix="/usr"
}

src_install() {
	dolib.a *.a
	insinto /usr/include
	doins mjsu.h
	mv error.3 mjsulib_error.3
	doman *.3 *.5 *.7
	echo
	echo
	ls -la
echo
}
