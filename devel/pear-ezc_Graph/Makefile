# Created by: Sebastien Santoro <dereckson@gmail.com>
# $FreeBSD$

PORTNAME=	Graph
PORTVERSION=	1.5
CATEGORIES=	devel pear
MASTER_SITES=	http://components.ez.no/get/
PKGNAMEPREFIX=	pear-${PEAR_CHANNEL}_

MAINTAINER=	derecksno@gmail.com
COMMENT=	2D and 3D line, pie and bar charts

BUILD_DEPENDS=	pear>=1.4.2:${PORTSDIR}/devel/pear \
		pear-ezc_Base>=1.8:${PORTSDIR}/devel/pear-ezc_Base \
		${PEARDIR}/.channels/components.ez.no.reg:${PORTSDIR}/devel/pear-channel-ezc
RUN_DEPENDS=	pear>=1.4.2:${PORTSDIR}/devel/pear \
		pear-ezc_Base>=1.8:${PORTSDIR}/devel/pear-ezc_Base \
		${PEARDIR}/.channels/components.ez.no.reg:${PORTSDIR}/devel/pear-channel-ezc

LICENSE=	BSD

PEAR_CHANNEL=	ezc
PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
