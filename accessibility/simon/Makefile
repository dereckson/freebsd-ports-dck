# New ports collection makefile for:    simon
# Date created:                         29 September 2010
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD: ports/net-p2p/ctcs/Makefile,v 1.2 2009/08/22 00:32:10 amdmi3 Exp $
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
