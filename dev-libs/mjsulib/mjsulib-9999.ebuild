# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
DESCRIPTION="library for slap 'Smart Label Printer'"
EGIT_REPO_URI="https://github.com/mundis/slap.git"

inherit git-2


SLOT="0"
LICENSE="GPL"
KEYWORDS=""
DEPEND="sys-apps/man-db"
RDEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack
}

src_prepare() {
	S=${WORKDIR}/${P}/${PN}
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
}
