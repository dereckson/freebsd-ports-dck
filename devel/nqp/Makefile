# Created by: Dereckson <dereckson@gmail.com>

PORTNAME=	nqp
PORTVERSION=	2021.08
CATEGORIES=	devel
MASTER_SITES=	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${PORTVERSION}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Raku-like environment for VM

LICENSE=	ART20

RUN_DEPENDS=	moar:devel/moarvm
BUILD_DEPENDS=	${RUN_DEPENDS} \
		p5-NQP-Config>=20210621:devel/p5-NQP-Config

USES=		gmake perl5

GH_ACCOUNT=	Raku
GH_PROJECT=	${PORTNAME}

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure.pl
CONFIGURE_ARGS=	--backends=moar
MAKE_JOBS_UNSAFE=	yes

do-configure:
	(cd ${WRKSRC} && ${PERL} ${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS})

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/nqp
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/nqp-m

.include <bsd.port.mk>
