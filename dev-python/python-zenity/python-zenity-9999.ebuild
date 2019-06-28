# Copyright 1999-2017 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4,3_5} )
inherit git-r3 distutils-r1

DESCRIPTION="${PN} is a library for python inspired by zenity"
EGIT_REPO_URI="https://github.com/poulp/python-zenity.git"
SRC_URI=""
SLOT="0"
LICENSE="GPL3"
KEYWORDS="~x86 ~amd64"
DEPEND=""
RDEPEND="${DEPEND}"
