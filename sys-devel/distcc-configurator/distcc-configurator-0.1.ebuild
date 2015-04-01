# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
DESCRIPTION="distcc-configurator is a scripted autoconfiguration for distccd"

SRC_URI="https://raw.githubusercontent.com/mundis/scripts/master/distcc-configurator/distcc-configurator
				 https://raw.githubusercontent.com/mundis/scripts/master/distcc-configurator/listener
         https://raw.githubusercontent.com/mundis/scripts/master/distcc-configurator/distcc-configurator.8"
SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND="sys-devel/distcc
        net-misc/ipcalc
        net-analyzer/netcat
        net-analyzer/nmap"
RDEPEND="${DEPEND}"
S=${WORKDIR}

src_install() {
	doinitd ${DISTDIR}/distcc-configurator
	dobin ${DISTDIR}/listener
	doman ${DISTDIR}/*.8
}

pkg_postinst() {
  ewarn "You should read the manpage before using this init-script"
  ewarn "There is a short description how the script works"
}
