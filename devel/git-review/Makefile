# $FreeBSD$

PORTNAME=	git-review
PORTVERSION=	1.19
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
MASTER_SITE_SUBDIR=	source/g/${PORTNAME}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Allow to push review and interact with a Gerrit server

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}argparse>0:${PORTSDIR}/devel/py-argparse \
		git:${PORTSDIR}/devel/git

USE_PYTHON=	yes
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
