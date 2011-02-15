# New ports collection makefile for:    nacl
# Date created:                         15 February 2011
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	nacl
PORTVERSION=	20090405
CATEGORIES=	security
MASTER_SITES=	http://hyperelliptic.org/${PORTNAME}/
USE_BZIP2=

MAINTAINER=	dereckson@gmail.com
COMMENT=	Crypto library with high-level interface

LICENSE=	PD
LICENSE_NAME=	Public domain
LICENSE_TEXT=	Source code is in public domain
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept
LICENSE_GROUPS=	GPL

do-build:
	${ECHO} Building...
	cd ${WRKSRC} && ${WRKSRC}/do

do-install:
	#${INSTALL_LIB} ${WRKSRC}/build/quux/lib/foo/libnacl.a ${PREFIX}/lib
	#${INSTALL_DATA} ${WRKSRC}/build/quux/include/foo/crypto_box.h ${PREFIX}/include
	#${INSTALL_DATA} ${WRKSRC}/build/quux/include/foo/crypto_box_curve25519salsa20hmacsha512.h ${PREFIX}/include
	#${INSTALL_DATA} ${WRKSRC}/build/quux/include/foo/crypto_box_curve25519xsalsa20poly1305.h ${PREFIX}/include

.include <bsd.port.mk>
