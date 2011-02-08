# New ports collection makefile for:   vdetelweb
# Date created:        8 February 2011
# Whom:                Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	vdetelweb
PORTVERSION=	1.1b
CATEGORIES=	net
MASTER_SITES=	SF/vde/${PORTNAME}/${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	Telnet and Web interface for VDE 2.x

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

MAN1=		vdetelweb.1

LICENSE=	GPLv2

.include <bsd.port.pre.mk>

#post-patch:
#	@${REINPLACE_CMD} -e '/-Wall/s|-O2||g' \
#		${WRKSRC}/configure
#	@${REINPLACE_CMD} -e 's|$$(MAKE).*install-data-hook||g' \
#		${WRKSRC}/man/Makefile.in
#	@${REINPLACE_CMD} -e 's|^AM_CFLAGS|#AM_CFLAGS|g' \
#		${WRKSRC}/src/slirpvde/Makefile.in

.include <bsd.port.post.mk>
