# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Zlib Compression for Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.600
	virtual/perl-IO-Compress
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
