PORTNAME=	naemon-livestatus
PORTVERSION=	1.4.2
DISTVERSIONPREFIX=	v
CATEGORIES=	net-mgmt

MAINTAINER=	dereckson@gmail.com
COMMENT=	Network monitoring system, fork of Nagios 4
WWW=	https://www.naemon.org/

LICENSE=	GPLv2

BUILD_DEPENDS=	naemon:net-mgmt/naemon-core
LIB_DEPENDS=	libicui18n.so:devel/icu \
		libicuuc.so:devel/icu \
		libicudata.so:devel/icu \
		libnaemon.so:net-mgmt/naemon-core

USES=	autoreconf gettext-runtime gmake gnome libtool
USE_GNOME=	glib20
GNU_CONFIGURE=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	naemon

PLIST_FILES=	bin/unixcat \
	etc/naemon/module-conf.d/livestatus.cfg \
	lib/naemon-livestatus/livestatus.so

post-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/naemon/module-conf.d
	${MV} ${STAGEDIR}${PREFIX}/etc/naemon/livestatus.cfg  ${STAGEDIR}${PREFIX}/etc/naemon/module-conf.d/livestatus.cfg
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/naemon-livestatus/livestatus.so

.include <bsd.port.mk>
