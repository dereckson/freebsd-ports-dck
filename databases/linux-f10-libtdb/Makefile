# New ports collection makefile for:	audio/linux-f10-libtdb
# Date crated:				10 Feb 2012
# Whom:					Dereckson <dereckson@gmail.com>
# $FreeBSD$
#

PORTNAME=	libtdb
PORTVERSION=	1.1.1
CATEGORIES=	databases linux
PKGNAMEPREFIX=	linux-f10-
DISTNAME=	${PORTNAME}-${PORTVERSION}-${RPMVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Trivial database system

LICENSE=	LGPL3

USE_LINUX_RPM=	yes
LINUX_DIST_VER=	10
ONLY_FOR_ARCHS=	i386 amd64
RPMVERSION=	36.fc10
USE_LDCONFIG=	yes

PLIST=		usr/lib/libtdb.so.1

DESCR=		${.CURDIR}/../tdb/pkg-descr

.include <bsd.port.mk>
