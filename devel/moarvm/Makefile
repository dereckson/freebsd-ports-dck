# Created by: Dereckson <dereckson@gmail.com>

PORTNAME=	MoarVM
PORTVERSION=	2021.08
CATEGORIES=	devel
MASTER_SITES=	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${PORTVERSION}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	VM with adaptive optimization and JIT compilation, built for Rakudo

LICENSE=	ART20

USES=		perl5 pkgconfig

GH_ACCOUNT=	${PORTNAME}
GH_PROJECT=	${PORTNAME}

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure.pl
CONFIGURE_ARGS=	--pkgconfig=${LOCALBASE}/bin/pkg-config
MAKE_JOBS_UNSAFE=	yes

do-configure:
	(cd ${WRKSRC} && ${PERL} ${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS})

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/moar
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/libmoar.so

.include <bsd.port.mk>
