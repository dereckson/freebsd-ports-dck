# New ports collection makefile for:    guake
# Date created:                         31 July 2010
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	guake
PORTVERSION=	0.4.2
CATEGORIES=	x11 gnome
MASTER_SITES=	http://guake.org/downloads/
DISTNAME=	guake-${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Top-down Quake-like terminal

BUILD_DEPENDS=	intltool-update:${PORTSDIR}/textproc/intltool \
		pkg-config:${PORTSDIR}/devel/pkg-config \
		${PYTHON_SITELIBDIR}/gtk-2.0/vtemodule.so:${PORTSDIR}/x11-toolkits/py-vte \
		${SITE_PERL}/${PERL_ARCH}/XML/Parser.pm:${PORTSDIR}/textproc/p5-XML-Parser \
		gconftool-2:${PORTSDIR}/devel/gconf2
LIB_DEPENDS=	dbus-1.3:${PORTSDIR}/devel/dbus
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/gtk-2.0/pynotify/_pynotify.so:${PORTSDIR}/devel/py-notify \
		${LOCALBASE}/libdata/pkgconfig/dbus-python.pc:${PORTSDIR}/devel/py-dbus

USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

USE_PERL5_BUILD=5.8.1+
USE_PYTHON=	2.4+
USE_GNOME=      pygtk2
GCONF_SCHEMAS=	guake.schemas

.include <bsd.port.pre.mk>
.include <bsd.port.post.mk>
