# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='Supports app to run as a reverse proxy backend'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS=""
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Base
	echo dev-perl/Test-Base
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Plack::Middleware
	echo dev-perl/Plack
	# Plack::Request
	echo dev-perl/Plack
	# YAML
	echo dev-perl/yaml
	# parent
	echo virtual/perl-parent
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="broken"
