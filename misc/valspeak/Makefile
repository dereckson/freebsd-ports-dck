# $FreeBSD$

PORTNAME=	valspeak
PORTVERSION=	1.0
CATEGORIES=	misc
MASTER_SITES=	http://dereckson.devio.us/software/${PORTNAME}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Filter that converts English text to valspeak

CONFLICTS=	filters-* talkfilters-*

RESTRICTED=     1986 software shared on the net.sources newsgroup \
		with the intent to redistribute it, but without any \
		license or author information clearly available.

PLIST_FILES=	bin/valspeak

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/valspeak ${PREFIX}/bin

.include <bsd.port.mk>
