# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
RESTRICT="fetch"
DESCRIPTION="SDK for development of blackmagic apps"
SLOT="0"
SRC="Blackmagic_DeckLink_SDK_${PV}.zip"
SRC_URI=${SRC}
SDK_URI="http://www.blackmagicdesign.com/support/sdks"
HEADERS_DIR=${WORKDIR}/Blackmagic_DeckLink_SDK_9.7.1/Linux/include
LICENSE="blackmagic"
KEYWORDS="~x86 ~amd64"
IUSE="tools examples"
DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir ${S}
	unpack ${SRC}
	mv "Blackmagic DeckLink SDK 9.7.1" Blackmagic_DeckLink_SDK_9.7.1
}

pkg_nofetch() {
        einfo "Because Blackmagic Design (c) wants you to register for using the SDK"
        einfo "this package is fetch restricted."
        einfo ""
        einfo "Please download '${SRC}' from:"
        einfo "'${SDK_URI}'"
        einfo "and move it to '${DISTDIR}'"
}

src_install(){
	doheader ${HEADERS_DIR}/*
	if use tools;then
		if use x86;then
			dobin ${WORKDIR}/Blackmagic_DeckLink_SDK_9.7.1/Linux/Samples/bin/i386/*					
		fi
		if use amd64;then
			dobin ${WORKDIR}/Blackmagic_DeckLink_SDK_9.7.1/Linux/Samples/bin/x86_64/*
		fi
	fi
	if use examples;then
		rm -rf ${WORKDIR}/Blackmagic_DeckLink_SDK_9.7.1/Linux/Samples/bin
		cd ${WORKDIR}/Blackmagic_DeckLink_SDK_9.7.1/Linux/Samples
		tar cfj ${PF}.tar.bz2 *
		dodoc ${PF}.tar.bz2
	fi
}
	
