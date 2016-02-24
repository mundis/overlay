# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
DESCRIPTION="H2rename is especially developed to repair/rename broken charakters so called umlauts"
EGIT_REPO_URI="git://github.com/ctbo/h2rename.git"
inherit git-2 qt4-r2
SRC_URI=""
SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND="dev-qt/qtgui"
RDEPEND="${DEPEND}"
src_unpack() {
	git-2_src_unpack
}

src_install() {
	dobin ${PN}
	newicon ${FILESDIR}/h2rename_10_16x16x32.png ${PN}.png
	make_desktop_entry ${PN} "${PN} Repair Broken Encodings" ${PN} "System"
}
