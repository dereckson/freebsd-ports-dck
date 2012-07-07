# New ports collection makefile for:    codemod
# Date created:                         7 July 2q012
# Whom:                                 Dereckson <dereckson@espace-win.org>
#
# $FreeBSD$
#

PORTNAME=	codemod
PORTVERSION=	20120409
CATEGORIES=	devel
MASTER_SITES=	 http://devio.us/~dereckson/software/codemod/
#DISTNAME=	${PORTNAME}-${PORTVERSION:S/./-/g}
#EXTRACT_SUFX=	.py
#EXTRACT_ONLY=	# empty

MAINTAINER=	dereckson@espace-win.org
COMMENT=	Refactoring helper tool

LICENSE=	AL2

USE_PYTHON=	yes
NO_BUILD=	yes
PLIST_FILES=	bin/codemod

.include <bsd.port.pre.mk>

#do-extract:
#	@${MKDIR} ${WRKSRC}
#	@${CP} ${DISTDIR}/${DISTFILES} ${WRKSRC}/${DISTFILES}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/codemod.py ${PREFIX}/bin/codemod

.include <bsd.port.post.mk>
