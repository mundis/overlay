# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools flag-o-matic eutils

DESCRIPTION="IBM's Journaling Filesystem (JFS) Utilities patched for building libjfs.a needed by Partclone"
HOMEPAGE="http://jfs.sourceforge.net/"
SRC_URI="http://jfs.sourceforge.net/project/pub/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh ~sparc x86"
IUSE="static"

DOCS=( AUTHORS ChangeLog NEWS README )

src_prepare() {
	epatch "${FILESDIR}"/${P}-linux-headers.patch #448844
	epatch "${FILESDIR}"/${P}-sysmacros.patch #580056
	epatch "${FILESDIR}"/jfsutils_partclone.patch
}

src_configure() {
	eautoreconf
	# It doesn't compile on alpha without this LDFLAGS
	use alpha && append-ldflags "-Wl,--no-relax"

	use static && append-ldflags -static
	econf --sbindir=/sbin
}

src_install () {
	default

	rm -f "${ED}"/sbin/{mkfs,fsck}.jfs || die
	dosym /sbin/jfs_mkfs /sbin/mkfs.jfs
	dosym /sbin/jfs_fsck /sbin/fsck.jfs
}
