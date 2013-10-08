# Copyright 1999-2012 
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games

DESCRIPTION="DOMINATION Maps that uses no additional files"
HOMEPAGE=""
SRC_URI="http://localhost/DOM_Maps1_no_deps.zip
	 http://localhost/DOM_Maps2_no_deps.zip"
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
	for i in *;do echo $i;done

        # unpack the DOM Maps Pack umod
        umod -v -b "$(pwd)" -x DOM_Maps1_no_deps.umod || die "could not unpack DOM_Maps1_no_deps.umod"
        umod -v -b "$(pwd)" -x DOM_Maps2_no_deps.umod || die "could not unpack DOM_Maps2_no_deps.umod"

        # move stuff around
        rm DOM_Maps1_no_deps.umod
        rm DOM_Maps2_no_deps.umod
	
	# move textfiles to a separeted folder 
	mkdir TXT
	mv *.txt TXT

        # install it all
        local dir=${GAMES_PREFIX_OPT}/unreal-tournament
        dodir "${dir}"

        mv * "${D}/${dir}/"

        prepgamesdirs
}
