# New ports collection makefile for:    Inline::Python
# Date created:                         2 April 2011
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	Inline-Python
PORTVERSION=	0.39
CATEGORIES=	devel perl5 python
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	dereckson@gmail.com
COMMENT=	Write Perl subroutines in Python

BUILD_DEPENDS=	p5-Inline>=0.46:${PORTSDIR}/devel/p5-Inline

USE_PYTHON=	YES

MAN3=		Inline::Python.3

PERL_CONFIGURE=	yes

LICENSE=	ART20

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|%%PYTHON_CMD%%|${PYTHON_CMD}|g' ${WRKSRC}/Makefile.PL

.include <bsd.port.post.mk>
