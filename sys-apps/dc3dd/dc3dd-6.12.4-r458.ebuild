# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"

inherit autotools

DESCRIPTION="Patched version of dd with features intended for forensic acquisition of data"
HOMEPAGE="http://dc3dd.sourceforge.net/projects/dc3dd"
#SRC_URI="http://dc3dd.sourceforge.net/projects/dc3dd/${PF}.tar.gz"
SRC_URI="http://sourceforge.net/projects/dc3dd/files/dc3dd/${PV}/${PF}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86 ~ppc"
IUSE="nls"

S="${WORKDIR}/${PF}"

src_configure() {
	econf $(use_enable nls) --enable-hdparm
}

