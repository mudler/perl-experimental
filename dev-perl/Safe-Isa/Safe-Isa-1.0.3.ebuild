# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=1.000003
inherit perl-module

DESCRIPTION='Call isa, can, does and DOES safely on things that may not be objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
