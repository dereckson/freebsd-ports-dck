# New ports collection makefile for:	p5-marc-moose
# Date created:				21 October 2012
# Whom:					Dereckson <dereckson@espace-win.org>
#
# $FreeBSD$
#

PORTNAME=	marc-moose
PORTVERSION=	0.028
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	MARC
PKGNAMEPREFIX=	p5-

MAINTAINER=	dereckson@espace-win.org
COMMENT=	Moose based MARC records set of tools

BUILD_DEPENDS=	p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp \
		p5-MARC-XML>=0:${PORTSDIR}/textproc/p5-MARC-XML \
		p5-Time-HiRes>=0:${PORTSDIR}/devel/p5-Time-HiRes \
		p5-Carp>=0:${PORTSDIR}/devel/p5-Carp \
		p5-Getopt-Long>=0:${PORTSDIR}/devel/p5-Getopt-Long \
		p5-JSON>=0:${PORTSDIR}/converters/p5-JSON \
		p5-MARC-Record>=0:${PORTSDIR}/textproc/p5-MARC-Record \
		p5-Moose>=1.00:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-RW>=0:${PORTSDIR}/devel/p5-MooseX-RW \
		p5-Text-Iconv>=1.7:${PORTSDIR}/converters/p5-Text-Iconv \
		p5-XML-SAX>=0:${PORTSDIR}/textproc/p5-XML-SAX \
		p5-XML-SAX-Base>=0:${PORTSDIR}/textproc/p5-XML-SAX-Base \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-XML-Writer>=0.606:${PORTSDIR}/textproc/p5-XML-Writer \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML \
		p5-YAML-Syck>=0:${PORTSDIR}/textproc/p5-YAML-Syck

RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

MAN1=	marcmoose.1
MAN3=	MARC::Moose::Reader::File::Marcxml.3 MARC::Moose::Record.3 \
	MARC::Moose::Reader::String::Iso2709.3 MARC::Moose::Field::Std.3 \
	MARC::Moose::Formater::Marcxml.3 MARC::Moose::Formater::Text.3 \
	MARC::Moose::Reader::File::Iso2709.3 MARC::Moose::Formater.3 \
	MARC::Moose::Reader::File.3 MARC::Moose::Parser::Legacy.3 \
	MARC::Moose::Parser::Yaml.3 MARC::Moose::Formater::Legacy.3 \
	MARC::Moose.3 MARC::Moose::Parser::Iso2709.3 MARC::Moose::Field.3 \
	MARC::Moose::Parser::Marcxml.3 MARC::Moose::Parser::MarcxmlSax.3 \
	MARC::Moose::Formater::Json.3 MARC::Moose::Parser::MarcxmlSaxSimple.3 \
	MARC::Moose::Reader::File::Isis.3 MARC::Moose::Writer.3 \
	MARC::Moose::Formater::UnimarcToMarc21.3  MARC::Moose::Parser::Isis.3 \
	MARC::Moose::Formater::Yaml.3 MARC::Moose::Reader.3 \
	MARC::Moose::Formater::Iso2709.3 MARC::Moose::Reader::String.3 \
	MARC::Moose::Field::Control.3 MARC::Moose::Parser.3 \
	MARC::Moose::Parser::MarcxmlSaxHandler.3 MARC::Moose::Parser::Json.3

.include <bsd.port.mk>
