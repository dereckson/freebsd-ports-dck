# New ports collection makefile for:    Spectrum
# Date created:                         30 December 2012
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	spectrum
DISTVERSION=	2.0.0-beta2
CATEGORIES=	net-im
MASTER_SITES=	https://cloud.github.com/downloads/hanzz/libtransport/

MAINTAINER=	dereckson@gmail.com
COMMENT=	XMPP transport/gateway for IM and social networks

LICENSE=	GPLv3

USE_CMAKE=	yes
USE_GNOME=	glib20
USE_MYSQL=	yes
USE_SQLITE=	yes

LIB_DEPENDS=	purple:${PORTSDIR}/net-im/libpurple \
		popt:${PORTSDIR}/devel/popt \
		swiften:${PORTSDIR}/net-im/swiften

BUILD_DEPENDS=	${PREFIX}/lib/libcppunit.so:devel/cppunit


.include <bsd.port.mk>
