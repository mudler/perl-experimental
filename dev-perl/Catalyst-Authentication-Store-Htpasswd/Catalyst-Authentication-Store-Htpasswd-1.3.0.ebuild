# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.003
inherit perl-module

DESCRIPTION="Authen::Htpasswd based user storage/authentication."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.60
	>=dev-perl/Authen-Htpasswd-0.130.0
	dev-perl/Class-Accessor
	dev-perl/Crypt-PasswdMD5"
DEPEND="$RDEPEND
	dev-perl/Test-WWW-Mechanize-Catalyst
	dev-perl/Test-use-ok"

src_prepare() {
	# These tests are useless
	perl_rm_files "t/pod.t" "t/kwalitee.t" "t/pod-coverage.t";
	perl-module_src_prepare;
}

SRC_TEST=do
