# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=5.90042
inherit perl-module

DESCRIPTION='The Catalyst Framework Runtime'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
extra_conflicts() {
	echo '!dev-perl/Catalyst-Plugin-Unicode-Encoding';
}
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# Data::Dump
	echo dev-perl/Data-Dump
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# HTTP::Status
	echo dev-perl/HTTP-Message
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# CGI::Simple::Cookie 1.109 ( 1.109.0 )
	echo \>=dev-perl/Cgi-Simple-1.109.0
	# Carp
	echo dev-lang/perl
	# Catalyst::DispatchType::Regex 5.90021 ( 5.900.210 )
	echo \>=dev-perl/Catalyst-DispatchType-Regex-5.900.210
	# Class::C3::Adopt::NEXT 0.07 ( 0.70.0 )
	echo \>=dev-perl/Class-C3-Adopt-NEXT-0.70.0
	# Class::Data::Inheritable
	echo dev-perl/Class-Data-Inheritable
	# Class::Load 0.12 ( 0.120.0 )
	echo \>=dev-perl/Class-Load-0.120.0
	# Class::MOP 0.95 ( 0.950.0 )
	echo \>=dev-perl/Moose-0.950.0
	# Data::Dump
	echo dev-perl/Data-Dump
	# Data::OptList
	echo dev-perl/Data-OptList
	# Devel::InnerPackage
	echo virtual/perl-Module-Pluggable
	# Encode 2.49 ( 2.490.0 )
	echo \>=virtual/perl-Encode-2.490.0
	# HTML::Entities
	echo dev-perl/HTML-Parser
	# HTML::HeadParser
	echo dev-perl/HTML-Parser
	# HTTP::Body 1.06 ( 1.60.0 )
	echo \>=dev-perl/HTTP-Body-1.60.0
	# HTTP::Headers 1.64 ( 1.640.0 )
	echo \>=dev-perl/HTTP-Message-1.640.0
	# HTTP::Request 5.814 ( 5.814.0 )
	echo \>=dev-perl/HTTP-Message-5.814.0
	# HTTP::Request::AsCGI 1.0 ( 1.0.0 )
	echo \>=dev-perl/HTTP-Request-AsCGI-1.0.0
	# HTTP::Response 5.813 ( 5.813.0 )
	echo \>=dev-perl/HTTP-Message-5.813.0
	# LWP 5.837 ( 5.837.0 )
	echo \>=dev-perl/libwww-perl-5.837.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Module::Pluggable 3.9 ( 3.900.0 )
	echo \>=virtual/perl-Module-Pluggable-3.900.0
	# Moose 1.03 ( 1.30.0 )
	echo \>=dev-perl/Moose-1.30.0
	# MooseX::Emulate::Class::Accessor::Fast 0.00903 ( 0.9.30 )
	echo \>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.9.30
	# MooseX::Getopt 0.48 ( 0.480.0 )
	echo \>=dev-perl/MooseX-Getopt-0.480.0
	# MooseX::MethodAttributes::Inheritable 0.24 ( 0.240.0 )
	echo \>=dev-perl/MooseX-MethodAttributes-0.240.0
	# MooseX::Role::WithOverloading 0.09 ( 0.90.0 )
	echo \>=dev-perl/MooseX-Role-WithOverloading-0.90.0
	# Path::Class 0.09 ( 0.90.0 )
	echo \>=dev-perl/Path-Class-0.90.0
	# Plack 0.9991 ( 0.999.100 )
	echo \>=dev-perl/Plack-0.999.100
	# Plack::Middleware::ReverseProxy 0.04 ( 0.40.0 )
	echo \>=dev-perl/Plack-Middleware-ReverseProxy-0.40.0
	# Plack::Test::ExternalServer
	echo dev-perl/Plack-Test-ExternalServer
	# Safe::Isa
	echo dev-perl/Safe-Isa
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# String::RewritePrefix 0.004 ( 0.4.0 )
	echo \>=dev-perl/String-RewritePrefix-0.4.0
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# Text::SimpleTable 0.03 ( 0.30.0 )
	echo \>=dev-perl/Text-SimpleTable-0.30.0
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# Tree::Simple 1.15 ( 1.150.0 )
	echo \>=dev-perl/Tree-Simple-1.150.0
	# Tree::Simple::Visitor::FindByPath
	echo dev-perl/Tree-Simple-VisitorFactory
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# URI 1.36 ( 1.360.0 )
	echo \>=dev-perl/URI-1.360.0
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
	# namespace::clean 0.23 ( 0.230.0 )
	echo \>=dev-perl/namespace-clean-0.230.0
	# perl v5.8.3 ( 5.8.3 )
	echo \>=dev-lang/perl-5.8.3
}
DEPEND="
	$(extra_conflicts)
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
