# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=SARTAK
inherit perl-module

DESCRIPTION="A postmodern object system for Perl 5"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Class-MOP-0.64
	>=dev-perl/Sub-Exporter-0.972
"

