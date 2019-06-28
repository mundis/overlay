# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit python-single-r1

DESCRIPTION="Command line tool that generates XDG menus for several window managers"
HOMEPAGE="https://github.com/gapan/xdgmenumaker"

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/gapan/xdgmenumaker"
else
	KEYWORDS="~amd64"
	SRC_URI="https://github.com/gapan/xdgmenumaker/archive/${PV}.zip -> ${P}.zip"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	app-text/txt2tags
"
RDEPEND="
	${PYTHON_DEPS}
	dev-python/pyxdg
	dev-python/pygtk
"

PATCHES=( "${FILESDIR}/xdgmenumaker_ignore-show-only-in.patch"
		  "${FILESDIR}/xdgmenumaker_only-existing.patch"
		  "${FILESDIR}/xdgmenumaker_python2.patch"
		  "${FILESDIR}/xdgmenumaker_upcase-names.patch" )

src_prepare() {
	eapply_user
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" man install
}
