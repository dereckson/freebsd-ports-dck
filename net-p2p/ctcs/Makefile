# New ports collection makefile for:    ctcs
# Date created:                         7 July 2009
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	ctcs
PORTVERSION=	1.4.1
PORTREVISION=	1
CATEGORIES=	net-p2p
MASTER_SITES=	SF/dtorrent/${PORTNAME}/${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	CTorrent monitoring and managing interface

NO_BUILD=	#
USE_PERL5_RUN=	yes
PLIST_FILES=	bin/ctcs
WRKSRC=		${WRKDIR}/ctcs-${PORTVERSION}

.if !defined(NOPORTDOCS)
PLIST_DIRS=	%%DOCSDIR%%
PLIST_FILES+=	%%DOCSDIR%%/readme.txt
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctcs ${PREFIX}/bin

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${DOCSDIR}
.endif

.include <bsd.port.mk>
