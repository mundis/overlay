# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 desktop qmake-utils

DESCRIPTION="${PN} helps to repair/rename broken charakters so called umlauts"
HOMEPAGE="https://www.heise.de/ct/artikel/H2rename-Dateien-und-Verzeichnisse-umbenennen-292168.html"
EGIT_REPO_URI="https://github.com/ctbo/h2rename.git"

SLOT="0"
LICENSE="GPL-3"
DEPEND="dev-qt/qtgui:5"
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/H2rename-qt4-to-qt5.patch" )

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
