# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_VERSION=0.01
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="build and evaluate include/exclude lists"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }

RDEPEND="$(comment virtual/perl-Carp)"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
		dev-perl/Test-Exception
	)
"
SRC_TEST="do"
