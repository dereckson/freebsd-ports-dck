PORTNAME=	eget
DISTVERSIONPREFIX=	v
DISTVERSION=	1.3.4
CATEGORIES=	sysutils

MAINTAINER=	dereckson@gmail.com
COMMENT=	Easy prebuilt binary downloader
WWW=		https://github.com/zyedidia/eget

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

GO_MODULE=	github.com/zyedidia/eget

PLIST_FILES=	bin/eget share/man/man1/eget.1.gz

post-build:
	cd ${WRKSRC} && make eget.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/eget.1 ${STAGEDIR}${PREFIX}/share/man/man1

.include <bsd.port.mk>
