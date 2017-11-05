# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-apps/dcfldd/dcfldd-1.3.4.1.ebuild,v 1.3 2011/12/03 11:17:00 hwoarang Exp $

EAPI=5

DESCRIPTION="Patched version of dd with features intended for forensic acquisition of data"
HOMEPAGE="http://sourceforge.net/projects/dc3dd"
SRC_URI="http://sourceforge.net/projects/dc3dd/files/dc3dd/7.2/${PF}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="nls"

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
        econf $(use_enable nls) --enable-hdparm
}

src_install() {
        make install DESTDIR="${D}" || die "make install failed"
        dodoc AUTHORS ChangeLog README
}

