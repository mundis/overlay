# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="5"
inherit linux-mod
EGIT_REPO_URI="https://github.com/iperry/blackmagic.git"
DESCRIPTION="Blackmagic Software and Driver"
SLOT="0"
KEYWORDS="~x86 ~amd64"
DEPEND="x11-base/xorg-server
                dev-qt/qtgui"
RDEPEND="${DEPEND}"

BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"
MODULE_NAMES="blackmagic(kernel/drivers/blackmagic:${S})"


pkg_setup() {
        linux-mod_pkg_setup
        BUILD_PARAMS="KERN_DIR=${KV_DIR} KERNOUT=${KV_OUT_DIR}"
        enewgroup video
}

src_install() {
        linux-mod_src_install
}
