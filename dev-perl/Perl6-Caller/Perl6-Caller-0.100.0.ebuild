# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=OVID
MODULE_VERSION=0.100
inherit perl-module

DESCRIPTION="OO caller() interface"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Test-Simple
"
DEPEND="
	${COMMON_DEPEND}
	$(comment Config requires)
	>=virtual/perl-Module-Build-0.35.0 $(comment 0.350.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
