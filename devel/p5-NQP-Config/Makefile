# Created by: Dereckson <dereckson@gmail.com>

PORTNAME=	NQP-Config
PORTVERSION=	20210621
CATEGORIES=	devel perl5
PKGNAMEPREFIX=	p5-

MAINTAINER=	dereckson@gmail.com
COMMENT=	helper module to build Raku language

LICENSE=	ART20

USES=		perl5

NO_ARCH=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	Raku
GH_PROJECT=	nqp-configure
GH_TAGNAME=	9b98931

NOÃ_BUILD=	ys

do-build:	.SILENT
do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${SITE_PERL_REL}/NQP
	${INSTALL_DATA} ${WRKSRC}/lib/NQP/Config.pm \
	    ${WRKSRC}/lib/NQP/Macros.pm \
	    ${STAGEDIR}${PREFIX}/${SITE_PERL_REL}/NQP/

.include <bsd.port.mk>
