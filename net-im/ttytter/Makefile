# New ports collection makefile for:	ttytter
# Date created:				21 March 2009
# Whom:				        Julian C. Dunn <jdunn@aquezada.com>
#
# $FreeBSD: ports/net-im/ttytter/Makefile,v 1.14 2010/09/16 17:52:28 decke Exp $

PORTNAME=	ttytter
PORTVERSION=	1.1.6
CATEGORIES=	net-im
MASTER_SITES=	http://www.floodgap.com/software/$(PORTNAME)/dist1/:DIST \
		http://www.floodgap.com/software/ffsl/:LICENSE
#MASTER_SITE_SUBDIR=	$(PORTNAME)/dist1:DIST ffsl:LICENSE
DIST_SUBDIR=	$(PORTNAME)
DISTFILES=	1.1.06.txt:DIST license.txt:LICENSE
EXTRACT_ONLY=

MAINTAINER=	jdunn@aquezada.com
COMMENT=	Command-line Twitter client in Perl

RUN_DEPENDS=	${SITE_PERL}/Date/Parse.pm:${PORTSDIR}/devel/p5-TimeDate \
		curl:${PORTSDIR}/ftp/curl

NO_BUILD=	yes
USE_PERL5_RUN=	yes

OPTIONS=	READLINE	"Include rich readline support"	on \
		TRLTTYTTER	"Use Term::ReadLine::TTYtter (experimental)" off

PLIST_FILES=	bin/${PORTNAME}

LICENSE=	FFSL
LICENSE_FILE=	${WRKSRC}/license.txt
LICENSE_NAME=	Floodgap Free Software License
LICENSE_PERMS=	pkg-mirror dist-mirror

.include <bsd.port.pre.mk>

.if defined(WITH_READLINE)
RUN_DEPENDS+=	${SITE_PERL}/Term/ReadLine/Perl.pm:${PORTSDIR}/devel/p5-ReadLine-Perl
.endif
.if defined(WITH_TRLTTYTTER)
UN_DEPENDS+=   ${SITE_PERL}/Term/ReadLine/TTYtter.pm:${PORTSDIR}/devel/p5-ReadLine-TTYtter
.endif

do-extract:
	@${MKDIR} ${WRKSRC}
	@${CP} ${DISTDIR}/$(DIST_SUBDIR)/1.1.06.txt  ${WRKSRC}/${PORTNAME}-${PORTVERSION}.txt
	@${CP} ${DISTDIR}/$(DIST_SUBDIR)/license.txt  ${WRKSRC}/
	

post-patch:
	@${REINPLACE_CMD} -e 's|^\#!/usr/bin/perl|\#!${PERL}|' ${WRKSRC}/${PORTNAME}-${PORTVERSION}.txt

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}-${PORTVERSION}.txt ${PREFIX}/bin/${PORTNAME}

.include <bsd.port.post.mk>
