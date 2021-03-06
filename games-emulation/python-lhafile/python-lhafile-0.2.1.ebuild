# Copyright 1999-2014 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1

#MY_P="${P/_p/fs}"

DESCRIPTION="LHA Archive Support for Python"
HOMEPAGE="http://fengestad.no/python-lhafile/"
SRC_URI="http://fengestad.no/python-lhafile/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}"
