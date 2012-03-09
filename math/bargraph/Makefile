# New ports collection makefile for:	bargraph
# Date created:        			9 March 2012
# Whom:                			Dereckson <dereckson@espace-win.org>
#
# $FreeBSD$
#

PORTNAME=	bargraph
PORTVERSION=	4.6
CATEGORIES=	math
MASTER_SITES=	http://bargraphgen.googlecode.com/files/
DISTNAME=	bargraphgen-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	dereckson@espace-win.org
COMMENT=	Scriptable bar graph generator

RUN_DEPENDS=	${LOCALBASE}/bin/fig2dev:${PORTSDIR}/print/transfig \
		${LOCALBASE}/bin/gnuplot:${PORTSDIR}/math/gnuplot

LICENSE=	GPLv2

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

.include <bsd.port.pre.mk>

#post-extract:
#	@${MKDIR} ${WRKSRC}
#	@${MV} ${DISTDIR}/README ${DISTDIR}/samples ${DISTDIR}/bargraph.pl  ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bargraph.pl ${PREFIX}/bin/bargraph

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}
.endif
.if !defined (NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${CP} ${WRKSRC}/samples/*.perf  ${WRKSRC}/samples/*.png ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
