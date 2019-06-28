# Copyright 1999-2010 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils flag-o-matic autotools

#WANT_AUTOMAKE="1.4"

DESCRIPTION="A Steganography detector for JPEG"
HOMEPAGE="http://www.outguess.org/"
SRC_URI="https://codeload.github.com/AlexandreFournier/stegdetect/tar.gz/v${PV} -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-apps/file
	dev-libs/glib"
DEPEND="${RDEPEND}"

src_compile() {
	emake || die "make failed"
}

src_install() {
	insinto /usr/share/stegbreak/
	doins rules.ini
	dobin stegbreak stegcompare stegdeimage stegdetect
	doman *.1
}
