# Copyright 1999-2012 
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games

DESCRIPTION="Add Missing INT Files for Relics usw(Not needed for goty)"
HOMEPAGE=""
SRC_URI="http://localhost/Missing_INT_Files_Patch.zip"
LICENSE="as-is"
SLOT="0"
KEYWORDS="-* amd64 x86"
IUSE=""

RDEPEND="games-fps/unreal-tournament
        !games-fps/unreal-tournament-goty"
DEPEND="${RDEPEND}
	app-arch/unzip
        games-util/umodpack"

S=${WORKDIR}

src_install() {
        # unpack the INT Files umod
        umod -v -b "$(pwd)" -x Missing_INT_Files_Patch.umod || die "could not unpack Missing_INT_Files_Patch.umod"

        # move stuff around
        rm Missing_INT_Files_Patch.umod

        # install it all
        local dir=${GAMES_PREFIX_OPT}/unreal-tournament
        dodir "${dir}"
        mv * "${D}/${dir}/"

        prepgamesdirs
}
