# Copyright 1999-2012 
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games

DESCRIPTION="CAPTURE_THE_FLAG Maps that uses no additional files"
HOMEPAGE=""
SRC_URI="http://localhost/CTF_Maps_no_deps.zip"
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
        # unpack the CTF Maps Pack umod
        umod -v -b "$(pwd)" -x CTF_Maps_no_deps.umod || die "could not unpack CTF_Maps_no_deps.umod"

        # move stuff around
        rm CTF_Maps_no_deps.umod
	mkdir TXT
	mv *.txt TXT	

        # install it all
        local dir=${GAMES_PREFIX_OPT}/unreal-tournament
        dodir "${dir}"
        mv * "${D}/${dir}/"

        prepgamesdirs
}
