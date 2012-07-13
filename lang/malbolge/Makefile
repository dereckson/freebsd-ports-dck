# New ports collection makefile for:    malbolge
# Date created:                         13 July 2012
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	malbolge
PORTVERSION=	0.1.1
CATEGORIES=	lang
MASTER_SITES=	http://cdn.bitbucket.org/dereckson/${PORTNAME}/downloads/

MAINTAINER=	dereckson@gmail.com
COMMENT=	An esoteric language

PLIST_FILES=	bin/malbolge

.if !defined(NOPORTDOCS)
PLIST_DIRS=	%%DOCSDIR%%
PLIST_FILES+=	%%DOCSDIR%%/malbolge.txt
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/malbolge ${PREFIX}/bin

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/malbolge.txt ${DOCSDIR}/
.endif

.include <bsd.port.mk>
