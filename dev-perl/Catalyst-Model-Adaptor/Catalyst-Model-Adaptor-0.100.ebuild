# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="helper for the incredibly lazy"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/MRO-Compat
	dev-perl/Catalyst-Runtime
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
	)
"
SRC_TEST=do
