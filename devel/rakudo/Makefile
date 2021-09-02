# Created by: Dereckson <dereckson@gmail.com>

PORTNAME=	rakudo
PORTVERSION=	2021.08
CATEGORIES=	devel
MASTER_SITES=	https://rakudo.org/dl/rakudo/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Perl 6 reference implementation

LICENSE=	ART20

BUILD_DEPENDS=	p5-NQP-Config>=20210621:devel/p5-NQP-Config \
		nqp:devel/nqp \
		moar:devel/moarvm

USES=		gmake perl5

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure.pl
CONFIGURE_ARGS=	--backends=moar
MAKE_JOBS_UNSAFE=	yes

do-configure:
	(cd ${WRKSRC} && ${PERL} ${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS})

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/perl6-m
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/perl6
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/perl6-debug-m
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rakudo
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rakudo-m
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rakudo-debug
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/rakudo-debug-m
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/perl6-debug
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/share/perl6/runtime/dynext/libperl6_ops_moar.so

	${RM} -rf ${STAGEDIR}${PREFIX}/share/perl6/core/precomp

.include <bsd.port.mk>
