# Copyright 1999-2012 
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games

DESCRIPTION="ChaosUT Mod for UT99"
HOMEPAGE=""
SRC_URI="http://files.chaoticdreams.org/Chaos/ChaosUT/chaosut_v1-1_full.zip
	 http://files.chaoticdreams.org/Chaos/ChaosUT/chaosut_beta4mappack.zip
	 http://files.chaoticdreams.org/Chaos/ChaosUT/chaosut_gotymappack.zip"
LICENSE="as-is"
SLOT="0"
KEYWORDS="-* amd64 x86"
IUSE=""

RDEPEND="games-fps/unreal-tournament
        !games-fps/unreal-tournament-goty
	games-fps/unreal-tournament-bonuspacks"

DEPEND="app-arch/unzip
        games-util/umodpack
	${RDEPEND}"

S=${WORKDIR}

src_install() {
        # unpack the INT Files umod
        umod -v -b "$(pwd)" -x chaosut_v1-1_full.umod || die "could not unpack chaosut_v1-1_full.umod"
	# unpack the Map-Packs umod
        umod -v -b "$(pwd)" -x chaosut_beta4mappack.umod || die "could not unpack chaosut_beta4mappack.umod"
        umod -v -b "$(pwd)" -x chaosut_gotymappack.umod || die "could not unpack chaosut_gotymappack.umod"


        # move stuff around
        rm chaosut_v1-1_full.umod
	rm CUTServerSetup.umod
	rm Chrekinstall.umod
	rm CUTDesktop.umod	
	rm chaosut_beta4mappack.umod
	rm chaosut_gotymappack.umod
	rm chrek_readme.txt

        # install it all
        local dir=${GAMES_PREFIX_OPT}/unreal-tournament
        dodir "${dir}"
        mv * "${D}/${dir}/"

        prepgamesdirs
}
