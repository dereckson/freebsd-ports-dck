# New ports collection makefile for:	Swiften
# Date created:                         30 December 2012
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	swiften
PORTVERSION=	2.0
CATEGORIES=	net-im
MASTER_SITES=	http://cdn.flosoft-services.net/swift/releases/${DISTNAME}/
DISTNAME=	swift-${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	XMPP client library

BUILD_DEPENDS=	${LOCALBASE}/include/boost/signals.hpp:${PORTSDIR}/devel/boost-libs \
		${LOCALBASE}/include/libxml2/libxml/parser.h:${PORTSDIR}/textproc/libxml2 \
		${LOCALBASE}/include/idna.h:${PORTSDIR}/dns/libidn \
		${LOCALBASE}/include/avahi-client/client.h:${PORTSDIR}/net/avahi-app

LICENSE=	GPLv3

USE_PYTHON=	2.5+
USE_GNOME=	glib20 gconf2
USE_SCONS=	yes
USE_OPENSSL=	yes
SCONS_TARGET=	V=1 swiften_dll=1 Swiften force-configure=1
SCONS_INSTALL_TARGET=	SWIFTEN_INSTALLDIR=${PREFIX} ${PREFIX}

#TODO: configure SCONS environment, so it knows about our libraries:
#  Checking for C++ header file boost/signals.hpp... no
#  Checking for C header file libxml/parser.h... no
#  Checking for C header file idna.h... no
#  Checking for C header file avahi-client/client.h... no

post-install:
	${INSTALL_LIB} ${WRKSRC}/Swiften/libSwiften.so.2.0 ${PREFIX}/lib
	${INSTALL_LIB} ${WRKSRC}/Swiften/libSwiften.so.2 ${PREFIX}/lib
	${INSTALL_LIB} ${WRKSRC}/Swiften/libSwiften.so ${PREFIX}/lib

.include <bsd.port.mk>
