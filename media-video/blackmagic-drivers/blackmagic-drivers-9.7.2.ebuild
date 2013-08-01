# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="5"
inherit linux-mod
DESCRIPTION="Blackmagic Software and Driver"
MY_P=Blackmagic_Desktop_Video_Linux_${PV}
SRC_URI="http://software.blackmagicdesign.com/DesktopVideo/${MY_P}.tar.gz"
SLOT="0"
IUSE="media-express"
KEYWORDS="~x86 ~amd64"
DEPEND="x11-base/xorg-server
        !media-video/DeckLink
        media-express? (
                app-arch/alien
                !media-video/MediaExpress
                dev-qt/qtgui
)"
RDEPEND="${DEPEND}"
BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"
MODULE_NAMES="blackmagic(kernel/drivers/blackmagic:${S})"

src_unpack() {
        unpack ${MY_P}.tar.gz
        mkdir ${S}
        if use x86;then
                PLATFORM=i386
        fi
        if use amd64;then
                PLATFORM=x86_64
        fi
        DRIVER=`ls desktopvideo* | grep tar.gz | grep ${PLATFORM}`
        tar xzf ${DRIVER}
        SRC_NAME=`find -maxdepth 1 -type d | grep ${PLATFORM}`
        SRC_NAME=${SRC_NAME##./}
        echo ${SRC_NAME}
        mv ${WORKDIR}/${SRC_NAME}/usr/src/${SRC_NAME%%-${PLATFORM}}/* ${S}
        if use media-express;then
                if use amd64;then PLATFORM=${ARCH};fi
                alien -t `ls mediaexpress*  | grep ${PLATFORM}`
                tar xzf mediaexpress*.tgz
        fi
}

pkg_setup() {
        linux-mod_pkg_setup
        BUILD_PARAMS="KERN_DIR=${KV_DIR} KERNOUT=${KV_OUT_DIR}"
        enewgroup video
}

src_install() {
        linux-mod_src_install
        cd ${WORKDIR}
        dobin ${SRC_NAME}/usr/bin/Blackmagic*
        dolib ${SRC_NAME}/usr/lib/libDeckLink*
        dodir /usr/share/applications
        insinto /usr/share/applications
        doins ${SRC_NAME}/usr/share/applications/*
        insinto /usr/share/icons/hicolor
        cp -r ${SRC_NAME}/usr/share/icons/hicolor/* ${D}/usr/share/icons/hicolor || die
        dosym /usr/share/icons/hicolor/48x48/apps/BlackmagicControlPanel.png /usr/share/pixmaps/
        insinto /etc
        cp -r ${SRC_NAME}/etc/* ${D}/etc || die
        cd ${WORKDIR}/${SRC_NAME}/usr/share/doc/desktopvideo
        tar cfj ${PF}.tar.bz2 *
        dodoc ${PF}.tar.bz2
        if use media-express;then
                cd ${WORKDIR}
                dobin usr/bin/MediaExpress
                dolib usr/lib/blackmagic/me/*
                dodir /usr/share/applications
                insinto /usr/share/applications
                doins usr/share/applications/*
                cp -r usr/share/icons/hicolor/* ${D}/usr/share/icons/hicolor || die
                dosym /usr/share/icons/hicolor/48x48/apps/MediaExpress.png /usr/share/pixmaps/
        fi
}
