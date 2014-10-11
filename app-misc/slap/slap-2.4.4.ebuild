# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
DESCRIPTION="slap is 'Smart Label Printer' command line program"
SRC_URI="https://github.com/mundis/slap/raw/master/original/${PN}-${PV}.tar.gz"

SLOT="0"
LICENSE="GPL"
KEYWORDS="~x86 ~amd64"
DEPEND="dev-libs/mjsulib"
RDEPEND="${DEPEND}"


src_unpack() {
	unpack ${P}.tar.gz
}

src_install() {
	dobin ${PN}
	doman *.1
	mv svr3.pi slapf.svr3
	mv svr4.pi slapf.svr4
	mv bsd.pi slapf.bsd
	tools/mktree                    ${D}/usr/local/lib/slapfonts
        tools/finst -m 444 fonts/*.pro  ${D}/usr/local/lib/slapfonts
        tools/finst -m 444 fonts/*.plus ${D}/usr/local/lib/slapfonts
        tools/finst -m 444 slapf.svr4   ${D}/usr/local/lib/slapf.svr4
        tools/finst -m 444 slapf.bsd    ${D}/usr/local/lib/slapf.bsd
        tools/finst -m 444 slapf.svr3   ${D}/usr/local/lib/slapf.svr3
}
