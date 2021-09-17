# Created by: Dereckson <dereckson@gmail.com>

PORTNAME=	zef
PORTVERSION=	0.11.13
DISTVERSIONPREFIX=	v
CATEGORIES=	devel

MAINTAINER=	dereckson@gmail.com
COMMENT=	Package manager for Raku ecosystem

LICENSE=	ART20

BUILD_DEPENDS=	raku:devel/rakudo
RUN_DEPENDS=	raku:devel/rakudo

USE_GITHUB=	yes
NO_BUILD=	yes
GH_ACCOUNT=	ugexe

do-install:
	cd ${WRKSRC} && raku -I. bin/zef -to="inst#${STAGEDIR}${PREFIX}/share/perl6" install .

post-install:
	${RM} -rf ${STAGEDIR}${PREFIX}/share/perl6/precomp \
		${STAGEDIR}${PREFIX}/share/perl6/repo.lock \
		${STAGEDIR}${PREFIX}/share/perl6/version

.include <bsd.port.mk>
