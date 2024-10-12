PORTNAME=	salt-wrapper
DISTVERSION=	0.0.2
CATEGORIES=	sysutils
MASTER_SITES=	https://ftp.nasqueron.org/pub/software/${PORTNAME}/

MAINTAINER=	dereckson@gmail.com
COMMENT=	Wrapper for salt to use several Salt instances
WWW=	https://docs.nasqueron.org/salt-wrapper/

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=	sudo:security/sudo

USES=		python:3.0+

NO_BUILD=	yes
NO_ARCH=	yes

PLIST_FILES=	bin/salt-get-config-dir bin/salt-wrapper \
		man/man1/salt-get-config-dir.1.gz man/man1/salt-wrapper.1.gz \
		man/man5/salt-wrapper.conf.5.gz

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/salt-get-config-dir.py ${STAGEDIR}${PREFIX}/bin/salt-get-config-dir
	${INSTALL_SCRIPT} ${WRKSRC}/salt-wrapper.sh ${STAGEDIR}${PREFIX}/bin/salt-wrapper
	${INSTALL_MAN} -C ${WRKSRC}/man/salt-get-config-dir.1 ${STAGEDIR}${PREFIX}/man/man1
	${INSTALL_MAN} -C ${WRKSRC}/man/salt-wrapper.1 ${STAGEDIR}${PREFIX}/man/man1
	${INSTALL_MAN} -C ${WRKSRC}/man/salt-wrapper.conf.5 ${STAGEDIR}${PREFIX}/man/man5

.include <bsd.port.mk>
