# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
inherit git-r3

KEYWORDS="~x86 ~amd64"
DESCRIPTION="Opensnap brings the Aero Snap feature to Openbox"
EGIT_REPO_URI="https://github.com/lawl/opensnap.git"
LICENSE="BSD 2-Clause "Simplified" License"

SLOT="0"
DEPEND="x11-misc/wmctrl
				x11-libs/libX11
				x11-libs/gtk+:3"
RDEPEND="${DEPEND}"

src_unpack() {
	git-r3_src_unpack
}

src_install() {
	dobin bin/${PN}
	dodir /etc/${PN}
	insinto /etc/${PN}
	doins sample_configs/*
}

pkg_postinst() {
	ewarn "for autostart opensnap daemon you have to add the following"
	ewarn	"two lines to your ~/.config/openbox/autostart file:"
	ewarn "\tkill `ps ax | grep opensnap | grep -v grep | awk '{print $1}'`"
	ewarn "opensnap -d"
}
