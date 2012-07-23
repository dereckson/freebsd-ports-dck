# New ports collection makefile for:	gophrier
# Date created:				23 July 2012
# Whom:					Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	gophrier
PORTVERSION=	0.2.3
CATEGORIES=	net
MASTER_SITES=	http://download.tuxfamily.org/${PORTNAME}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	A Gopher server

LICENSE=	GPLv2

USE_CMAKE=	yes

MAN1=		gophrier.1
PLIST_FILES=	sbin/gophrier

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gophrier ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/gophrier.1 ${PREIX}/man/man1

.include <bsd.port.mk>
