# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit desktop qmake-utils

DESCRIPTION="${PN} helps to repair/rename broken charakters so called umlauts"
HOMEPAGE="https://github.com/mundis/h2rename"

if [[ ${PV} == *9999* ]]; then
	EGIT_REPO_URI="https://github.com/mundis/h2rename.git"
	inherit git-r3
else
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/mundis/h2rename/archive/${PV}.zip -> ${P}.zip"
fi

SLOT="0"
LICENSE="GPL-3"
DEPEND="dev-qt/qtgui:5"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	eqmake5
}

src_install() {
	mv H2rename ${PN}
	dobin ${PN}
	newicon "${FILESDIR}"/h2rename_10_16x16x32.png "${PN}".png
	make_desktop_entry ${PN} "${PN} Repair Broken Encodings" ${PN} "System"
}
