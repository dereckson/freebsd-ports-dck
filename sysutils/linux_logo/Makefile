# $FreeBSD$

PORTNAME=	linux_logo
DISTVERSION=	5.11
CATEGORIES=	sysutils
MASTER_SITES=	http://www.deater.net/weave/vmwprod/linux_logo/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Print an ASCII logo and some system info

LICENSE=    GPLv2

USES=       gmake gettext-runtime
GNU_CONFIGURE=  yes
PLIST_FILES=	bin/linux_logo man/man1/linux_logo.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1.gz ${STAGEDIR}${MANPREFIX}/man/man1

.include <bsd.port.mk>
