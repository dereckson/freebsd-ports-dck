PORTNAME=	naemon-core
PORTVERSION=	1.4.2
DISTVERSIONPREFIX=	v
CATEGORIES=	net-mgmt

MAINTAINER=	dereckson@gmail.com
COMMENT=	Network monitoring system, fork of Nagios 4
WWW=	https://www.naemon.org/

LICENSE=	GPLv2

BUILD_DEPENDS=	gperf:devel/gperf

USES=	autoreconf gmake gnome gettext-runtime libtool
GNU_CONFIGURE=	yes
USE_GNOME+=	glib20
USE_LDCONFIG=	yes
USE_RC_SUBR=	naemon

USE_GITHUB=	yes
GH_ACCOUNT=	naemon

PLIST_SUB=	NAEMONUSER=${NAEMONUSER} \
		NAEMONGROUP=${NAEMONGROUP}
SUB_LIST=	NAEMONDIR=${NAEMONDIR} \
		NAEMONUSER=${NAEMONUSER} \
		NAEMONGROUP=${NAEMONGROUP}
SUB_FILES=	pkg-message

ETCDIR=	${PREFIX}/etc/naemon

NAEMONUSER?=	naemon
NAEMONGROUP?=	naemon
NAEMONDIR?=	/var/spool/naemon

USERS=	naemon
GROUPS=	naemon

post-install:
	${RM} ${STAGEDIR}${PREFIX}/etc/init.d/naemon
	${RM} ${STAGEDIR}${PREFIX}/etc/logrotate.d/naemon
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/libnaemon.so.0.0.0

.include <bsd.port.mk>
