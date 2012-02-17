# New ports collection makefile for:	audio/linux-f10-libcanberra
# Date crated:				10 Feb 2012
# Whom:					Dereckson <dereckson@gmail.com>
# $FreeBSD$
#

PORTNAME=	libcanberra
PORTVERSION=	0.10
CATEGORIES=	audio linux
PKGNAMEPREFIX=	linux-f10-
DISTNAME=	${PORTNAME}-${PORTVERSION}-${RPMVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Implementation of the Freedesktop sound theme spec

LICENSE=	LGPL21

USE_LINUX_RPM=	yes
USE_LINUX_APPS=	libvorbis
LINUX_DIST_VER=	10
ONLY_FOR_ARCHS=	i386 amd64
RPMVERSION=	3.fc10
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../libcanberra/pkg-descr

DOCSDIR=	${PREFIX}/usr/share/doc/libcanberra-${PORTVERSION}
PORTDOCS=	README

.include <bsd.port.pre.mk>

post-extract:
	${RM} ${WRKDIR}/usr/share/doc/libcanberra-${PORTVERSION}/LGPL

.include <bsd.port.post.mk>
