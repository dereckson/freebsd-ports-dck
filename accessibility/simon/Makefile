# New ports collection makefile for:    simon
# Date created:                         29 September 2010
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	simon
PORTVERSION=	0.3.0
CATEGORIES=	accessibility audio
MASTER_SITES=	SF/speech2text/${PORTNAME}/${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Speech recognition program optimized for children

USE_BZIP2=	#

BUILD_DEPENDS=	cmake:${PORTSDIR}/devel/cmake

LICENSE=	GPLv3

do-build:
	${WRKSRC}/build.sh

.include <bsd.port.mk>
