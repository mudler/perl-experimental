# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Distributed cache"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.7006
	dev-perl/Cache-Memcached
"
RDEPEND="${DEPEND}"
SRC_TEST=do
