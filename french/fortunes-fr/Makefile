# New ports collection makefile for:	fortunes-fr
# Date created:				2010-10-17
# Whom:					Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	fortunes-fr
PORTVERSION=	0.02
CATEGORIES=	french
MASTER_SITES=	http://www.fortunes-fr.org/fortunes-fr/

MAINTAINER=	dereckson@gmail.com
COMMENT=	French compilation of fortunes

SUB_FILES=	pkg-message

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--datadir=${PREFIX}/share \
		--with-fortunesdir=${PREFIX}/share/games/fortune
USE_GMAKE=	yes

STRCMD=		/usr/games/strfile

LICENSE=	FFFUL
LICENSE_FILE=	${WRKSRC}/COPYING
LICENSE_NAME=	fortunes-fr fair use license
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

pre-build:
.if !exists(${STRCMD})
	@${ECHO_MSG} "Please install the games distribution"
	@exit 1
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
