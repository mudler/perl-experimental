# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Simplified interface to Log::Message"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Log-Message"
DEPEND="${RDEPEND}"

SRC_TEST=do
