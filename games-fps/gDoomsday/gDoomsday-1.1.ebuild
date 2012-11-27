# Copyright 2006 Shining Chaos
# Distributed under the terms of the GNU General Public License v2
# $Header: #

inherit eutils games
MY_P="${PN}-${PV}"
DESCRIPTION="Patched ebuild that works for Frontend for DOOM engine doomsday"
HOMEPAGE="http://gdoomsday.sourceforge.net"
SRC_URI="http://downloads.sourceforge.net/project/gdoomsday/gdoomsday/gDoomsday-1.1/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="games-fps/doomsday
		>=x11-libs/gtk+-2.4"

RDEPEND="${DEPEND}"

src_compile() 
{
	egamesconf || die
	emake || die "emake failed"
}

src_install()
{
	
	egamesinstall || die "make install failed"
	dodoc AUTHORS COPYING CHangeLog INSTALL NEWS README TODO
	prepgamesdirs
}
	
egamesinstall() {
 	ewarn "Don't use egamesinstall, use emake DESTDIR=\"\${D}\" install instead"
 	epause 30
 	make \
 	prefix="${D}${GAMES_PREFIX}" \
 	mandir="${D}/usr/share/man" \
 	infodir="${D}/usr/share/info" \
 	datadir="${D}${GAMES_DATADIR}" \
 	sysconfdir="${D}${GAMES_SYSCONFDIR}" \
 	localstatedir="${D}${GAMES_STATEDIR}" \
 	"$@" install || die "egamesinstall failed"
 	}


		
