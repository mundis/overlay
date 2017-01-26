# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
DESCRIPTION=""
EGIT_REPO_URI="https://github.com/ashleynewson/SmartSim.git"
inherit autotools git-r3 
SRC_URI=""
SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

#src_install() {
#	dobin ${PN}
#	newicon ${FILESDIR}/h2rename_10_16x16x32.png ${PN}.png
#	make_desktop_entry ${PN} "${PN} Repair Broken Encodings" ${PN} "System"
#}

