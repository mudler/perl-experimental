# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-ExtUtils-MakeMaker/perl-ExtUtils-MakeMaker-6.56.ebuild,v 1.12 2010/09/13 14:42:31 josejx Exp $
EAPI=5
DESCRIPTION="Virtual for perl-core/Devel-SelfStubber"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="|| (
	(
		>=dev-lang/perl-5.13.8
		!perl-core/Devel-SelfStubber
	)
	~perl-core/Devel-SelfStubber-${PV}
)"
