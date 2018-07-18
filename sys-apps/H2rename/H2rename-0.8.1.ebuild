# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
DESCRIPTION="H2rename is especially developed to repair/rename broken charakters so called umlauts"
SRC_URI="https://github.com/mundis/packages/raw/master/${P}.tar.bz2"
SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"

S=${WORKDIR}
src_prepare() { 
	default
}

src_configure() { :; }
src_compile() { :; }

src_install() {
        dodir /usr
        cp -aR "${S}"/usr/* "${ED}"/usr/
}
