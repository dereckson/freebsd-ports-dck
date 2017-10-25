# Created by: dereckson@gmail.com
# $FreeBSD$

PORTNAME=	t
PORTVERSION=	20161108
CATEGORIES=	deskutils
MASTER_SITES=	https://bitbucket.org/sjl/t/get/
DISTNAME=	655800c5080d

MAINTAINER=	dereckson@gmail.com
COMMENT=	Command-line lightweight task list

LICENSE=	MIT

WRKSRC=		work/sjl-${PORTNAME}-${DISTNAME}

NO_ARCH=	yes
NO_BUILD=	yes
USES=		python shebangfix
SHEBANG_FILES=	t.py

PLIST_FILES=	bin/t

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/t.py ${STAGEDIR}${PREFIX}/bin/t

.include <bsd.port.mk>
