# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-ExtUtils-MakeMaker/perl-ExtUtils-MakeMaker-6.56.ebuild,v 1.12 2010/09/13 14:42:31 josejx Exp $
EAPI=5
DESCRIPTION="Virtual for perl-core/IPC-SysV"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="|| ( =dev-lang/perl-5.18* =dev-lang/perl-5.16* =dev-lang/perl-5.14* ~perl-core/IPC-SysV-${PV} )
		 !<perl-core/IPC-SysV-${PV}
		 !>perl-core/IPC-SysV-${PV}-r999
"
