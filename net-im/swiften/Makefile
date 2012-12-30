# New ports collection makefile for:	Swiften
# Date created:                         30 December 2012
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	swiften
PORTVERSION=	2.0
DISTNAME=	swift-${PORTVERSION}
MASTER_SITES=	http://cdn.flosoft-services.net/swift/releases/${DISTNAME}/
CATEGORIES=	net-im

MAINTAINER=	dereckson@gmail.com
COMMENT=	XMPP client library

LICENSE=	GPLv3

USE_PYTHON=	2.5+
USE_GNOME=	glib20 gconf2
USE_SCONS=	yes
USE_OPENSSL=	yes
SCONS_TARGET=	V=1 swiften_dll=1 Swiften force-configure=1
SCONS_INSTALL_TARGET=	SWIFTEN_INSTALLDIR=${PREFIX} ${PREFIX}
#CPPPATH=	

#Checking for C++ header file boost/signals.hpp... no
#Checking for C header file libxml/parser.h... no
#Checking for C header file idna.h... no
#Checking for C header file avahi-client/client.h... no

BUILD_DEPENDS=	${PREFIX}/include/boost/signals.hpp:${PORTSDIR}/devel/boost-libs \
		${PREFIX}/include/libxml2/libxml/parser.h:${PORTSDIR}/textproc/libxml2 \
		${PREFIX}/include/idna.h:${PORTSDIR}/dns/libidn \
		${PREFIX}/include/avahi-client/client.h:${PORTSDIR}/net/avahi-app

#Build configuration to restrict to Swiften only seems to fail:
#Build Configuration
#-------------------
#Projects: Limber Sluift Swift Swiften Swiftob

.include <bsd.port.mk>
