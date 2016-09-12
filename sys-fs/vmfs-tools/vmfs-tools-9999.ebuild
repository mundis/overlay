# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils git-r3

DESCRIPTION=""
HOMEPAGE=""
EGIT_REPO_URI="git://github.com/glandium/vmfs-tools.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

IUSE="uuid"
DEPEND="
	app-text/asciidoc
	app-text/docbook-xsl-stylesheets
	app-text/docbook-xsl-ns-stylesheets
	sys-fs/fuse
	dev-libs/libxslt
	uuid? ( sys-libs/libuuid )
"

src_install() {
	dobin debugvmfs/debugvmfs
	dobin fsck.vmfs/fsck.vmfs
	dobin vmfs-fuse/vmfs-fuse
	dobin vmfs-lvm/vmfs-lvm
	dolib.a libvmfs/libvmfs.a
	insinto /usr/include/vmfs
	doins libvmfs/*.h
#	dodoc
#	doman
}
