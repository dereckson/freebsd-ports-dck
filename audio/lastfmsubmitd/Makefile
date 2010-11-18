# New ports collection makefile for:    lastfmsubmitd
# Date created:                         16 November 2010
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	lastfmsubmitd
PORTVERSION=	1.0.6
CATEGORIES=	audio
MASTER_SITES=	http://www.red-bean.com/decklin/${PORTNAME}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Daemon to submit scrobbles to last.fm

USERS=		lastfm
GROUPS=		lastfm

LICENSE=	MIT

OPTIONS=	MPD	"Install lastmp, a MPD client" Off

USE_PYTHON=	YES
USE_PYDISTUTILS=YES

SUB_FILES=	pkg-message

MAN1=		lastfmsubmitd.1
PORTDOCS=	README INSTALL NEWS

.include <bsd.port.pre.mk>

.if defined(WITH_MPD)
MAN1+=		lastmp.1
PORTDOCS+=	INSTALL.lastmp
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/README
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/INSTALL
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/doc/lastfmsubmitd.1
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/lib/lastfm/config.py
.if defined(WITH_MPD)
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/doc/lastmp.1
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/contrib/INSTALL.lastmp
.endif

post-install:
	${LN} -s ${PREFIX}/lib/lastfmsubmitd/lastfmsubmit ${PREFIX}/bin/lastfmsubmit
.for directory in /var/log /var/run /var/spool
	${MKDIR} -m 775 ${directory}/lastfm
	${CHOWN} ${USERS}:${GROUPS} ${directory}/lastfm
.endfor
	${INSTALL_MAN} ${WRKSRC}/doc/lastfmsubmitd.1 ${MANPREFIX}/man/man1
.if defined(WITH_MPD)
	${INSTALL_MAN} ${WRKSRC}/doc/lastmp.1 ${MANPREFIX}/man/man1
.endif
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/NEWS ${DOCSDIR}
.if defined(WITH_MPD)
	${INSTALL_DATA} ${WRKSRC}/contrib/INSTALL.lastmp ${DOCSDIR}
.endif
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
