# Copyright 1999-2017 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=6
DESCRIPTION="myrescue is similiar in purpose to dd_rescue, but it tries to quickly get out of damaged areas to first handle the not yet damaged part of the disk and return later"

inherit
HOMEPAGE="myrescue.sourceforge.net"
SRC_URI="https://downloads.sourceforge.net/project/${PN}/${PN}/${P}/${P}.tar.gz"
SLOT="0"
LICENSE="GPL2"
KEYWORDS="~x86 ~amd64"
DEPEND=""
RDEPEND="${DEPEND}"
S=${S}/src

src_install() {
	dobin ${PN}
	doman ${WORKDIR}/${P}/doc/*.1
}
