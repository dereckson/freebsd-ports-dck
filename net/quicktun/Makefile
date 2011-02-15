# New ports collection makefile for:    quicktun
# Date created:                         14 February 2011
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	quicktun
PORTVERSION=	2.1.5
CATEGORIES=	net
MASTER_SITES=	http://oss.ucis.nl/quicktun/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	dereckson@gmail.com
COMMENT=	VPN tunnel software based on the NaCl library

#TODO: add here the dependency to NaCl port (an independant port
#we'll prepare instead to let build.sh download and built it.)

LICENSE=	BSD

PLIST_FILES=bin/quicktun bin/quicktun-keypair lib/libnacl.a

#When the lib will have its port:
#PLIST_FILES=bin/quicktun bin/quicktun-keypair

do-build:
	cd ${WRKSRC} && ${WRKSRC}/build.sh

do-install:
	${INSTALL_LIB} ${WRKSRC}/lib/libnacl.a ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/out/quicktun.combined ${PREFIX}/bin/quicktun
	${INSTALL_PROGRAM} ${WRKSRC}/out/quicktun.keypair  ${PREFIX}/bin/quicktun-keypair

.include <bsd.port.mk>
