# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GBARR
MODULE_VERSION="0.12"
inherit perl-module

DESCRIPTION="Extract distribution name and version from a distribution filename"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPENDS="virtual/perl-Test-Simple"
RDEPENDS=""

SRC_TEST="do"
