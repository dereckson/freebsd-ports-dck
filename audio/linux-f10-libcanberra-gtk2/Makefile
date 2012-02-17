# New ports collection makefile for:	audio/linux-f10-libcanberra
# Date crated:				10 Feb 2012
# Whom:					Dereckson <dereckson@gmail.com>
# $FreeBSD$
#

PORTNAME=	libcanberra-gtk2
PORTVERSION=	0.10
CATEGORIES=	audio linux
PKGNAMEPREFIX=	linux-f10-
DISTNAME=	${PORTNAME}-${PORTVERSION}-${RPMVERSION}
MAINTAINER=	dereckson@gmail.com
COMMENT=	Implementation of the Freedesktop sound theme spec

LICENSE=	LGPL20

USE_LINUX_RPM=	yes
USE_LINUX_APPS= gtk2 libcanberra
ONLY_FOR_ARCHS= i386 amd64
LINUX_DIST_VER=	10
RPMVERSION=	2.fc10
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../libcanberra/pkg-descr

.include <bsd.port.mk>
