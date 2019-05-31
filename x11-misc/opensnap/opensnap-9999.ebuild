# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

KEYWORDS="~amd64 ~x86"
DESCRIPTION="Opensnap brings the Aero Snap feature to Openbox"
HOMEPAGE="https://github.com/lawl/opensnap"
EGIT_REPO_URI="https://github.com/lawl/opensnap.git"
LICENSE="BSD-2"

SLOT="0"
DEPEND="x11-misc/wmctrl
				x11-libs/libX11
				x11-libs/gtk+:3"
RDEPEND="${DEPEND}"

src_install() {
	dobin bin/${PN}
	dodir /etc/${PN}
	insinto /etc/${PN}
	doins sample_configs/*
}

pkg_postinst() {
	ewarn "IMPORTANT!"
	ewarn "for autostart opensnap daemon you have to add the following"
	ewarn "two lines to your ~/.config/openbox/autostart file:"
	ewarn "\tkill \`ps ax | grep opensnap | grep -v grep | awk '{print \$1}'\`"
	ewarn "\topensnap -d"
}
