# Copyright 1999-2012 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
inherit git-2

DESCRIPTION="forked and extended version from original blackmagic-capture cli"
EGIT_REPO_URI="https://github.com/lu-zero/bmdtools.git"
SRC_URI=""

SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND="x11-base/xorg-server
	media-video/blackmagic-SDK
	virtual/ffmpeg"
RDEPEND="${DEPEND}"

src_unpack() {
        git-2_src_unpack
	dosym /usr/include ${PORTAGE_BUILDDIR}/include
}
