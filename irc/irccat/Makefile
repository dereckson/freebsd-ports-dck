#TODO: user/group
#TODO: pid

# New ports collection makefile for:	irccat
# Date created:				9 October 2010
# Whom:					Dereckson <dereckson@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	irccat
PORTVERSION=	0.3.0
CATEGORIES=	irc
MASTER_SITES=	http://devio.us/~dereckson/software/${PORTNAME}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	The command cat for IRC, via TCP socket or HTTP

RUN_DEPENDS=	rackup:${PORTSDIR}/www/rubygem-rack \
		rubygem-bundler>=0.6.0:${PORTSDIR}/sysutils/rubygem-bundler \
		rubygem-json>0:${PORTSDIR}/devel/rubygem-json

LICENSE=	MIT

USE_RUBY=	yes
USE_RAKE=	yes
USE_RUBY_SETUP=	yes
USE_RUBY_RDOC=	yes

SUB_FILES=	pkg-message

USE_RC_SUBR=	irccat

USERS=		irccat
GROUPS=		irccat

.include <bsd.port.pre.mk>

post-install:
	${INSTALL_DATA} ${WRKSRC}/irccat.yml ${PREFIX}/etc/irccat.yml.sample
	@if [ ! -f ${PREFIX}/etc/irccat.yml ]; then \
		${CP} -p ${PREFIX}/etc/irccat.yml.sample ${PREFIX}/etc/irccat.yml ; \
	fi
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR} ${PREFIX}/etc/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/History.txt ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
