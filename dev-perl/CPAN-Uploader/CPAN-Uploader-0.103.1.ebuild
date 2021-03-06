# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.103001
inherit perl-module

DESCRIPTION='upload things to the CPAN'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	#echo virtual/perl-Carp
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# File::Basename
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# Getopt::Long::Descriptive 0.084 ( 0.84.0 )
	echo \>=dev-perl/Getopt-Long-Descriptive-0.84.0
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# HTTP::Status
	echo dev-perl/HTTP-Message
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Term::ReadKey
	echo dev-perl/TermReadKey
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
