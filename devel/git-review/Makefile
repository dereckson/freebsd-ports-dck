# New ports collection makefile for:	git-review
# Date created:				21 October 2012
# Whom:					Sébastien Santoro <dereckson@espace-win.org>
#
# $FreeBSD$
#

PORTNAME=	git-review
PORTVERSION=	1.18
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
MASTER_SITE_SUBDIR=	source/g/${PORTNAME}

MAINTAINER=	dereckson@espace-win.org
COMMENT=	Allow to push review and interact with a Gerrit server

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}argparse>0:${PORTSDIR}/devel/py-argparse

USE_PYTHON=	#yes
NO_BUILD=	yes

LICENSE=	AL2

MAN1=		git-review.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/git-review ${PREFIX}/bin/git-review
	${INSTALL_MAN} ${WRKSRC}/git-review.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README.md ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/HACKING ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/AUTHORS ${DOCSDIR}
.endif

.include <bsd.port.mk>
