# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-php/symfony/symfony-1.4.12.ebuild,v 1.1 2011/07/01 12:58:23 olemarkus Exp $

EAPI=2
inherit php-lib-r1

PHP_LIB_NAME="Symfony2"

KEYWORDS="~amd64 ~x86"

DESCRIPTION="Open-source PHP5 professional web framework"
HOMEPAGE="http://symfony.com/"
SRC_URI="http://symfony.com/download?v=Symfony_Standard_Vendors_${PV}.tgz"
LICENSE="MIT LGPL-2.1 BSD BSD-2 FDL-1.2"
SLOT="0"
IUSE="examples"

DEPEND=">=dev-lang/php-5.4.9[cli,ctype,pdo,posix,session,simplexml,sqlite,tokenizer,xml]"
RDEPEND="${DEPEND}"

src_install() {
	#working, but without empty subdir, e.g. app/cache
	#cd Symfony
	#php-lib-r1_src_install . $(find . -type f -print)

	insinto /usr/share/php/Symfony2
	doins -r Symfony/*
}
