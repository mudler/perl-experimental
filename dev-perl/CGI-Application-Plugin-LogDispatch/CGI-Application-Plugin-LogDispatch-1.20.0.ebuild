# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CEESHEK
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION="Add Log::Dispatch support to CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/CGI-Application
	>=dev-perl/log-dispatch-0.210.0
	dev-perl/UNIVERSAL-require
	virtual/perl-Scalar-List-Utils
"
DEPEND="$RDEPEND
	virtual/perl-Module-Build"

PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
SRC_TEST=do
