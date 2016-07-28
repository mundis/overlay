# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="4"


PYTHON_COMPAT=( python{2_7,3_4} )
PYTHON_REQ_USE='threads(+)' # required by waf
inherit git-2 waf-utils python-any-r1

DESCRIPTION="Oregano is an application for schematic capture and simulation of electrical circuits"
HOMEPAGE="https://github.com/drahnr/oregano"
EGIT_REPO_URI="https://github.com/drahnr/oregano.git"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""



CDEPEND="dev-libs/libxml2:2
	x11-libs/goocanvas:2.0
	x11-libs/gtk+:3
	x11-libs/gtksourceview:3.0
	app-text/rarian"
DEPEND="${CDEPEND}
	virtual/pkgconfig ${PYTHON_DEPS}"
RDEPEND="${CDEPEND}
	|| ( gnome-base/dconf gnome-base/gconf )"


src_configure() {
	waf-utils_src_configure release -j 6
}

pkg_preinst() {
	gnome2_schemas_savelist
}

pkg_postinst() {
	gnome2_schemas_update
	fdo-mime_desktop_database_update
	elog "You'll need to emerge your prefered simulation backend"
	elog "such ngspice or gnucap for simulation to work."
	elog "As an alternative generate a netlist and use sci-electronics/spice"
	elog "from the command line for simulation."
}

pkg_postrm() {
	gnome2_schemas_update
}
