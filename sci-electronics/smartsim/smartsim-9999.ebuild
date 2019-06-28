# Copyright 1999-2012 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools git-r3 

DESCRIPTION="SmartSim is a free and open source digital logic circuit design and simulation package"
EGIT_REPO_URI="https://github.com/ashleynewson/SmartSim.git"
SRC_URI=""

SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}
