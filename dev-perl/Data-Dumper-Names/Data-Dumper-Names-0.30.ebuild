# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=OVID
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="See your data in the nude"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/PadWalker-0.13
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
