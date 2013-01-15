# Created by: 			Sébastien Santoro <dereckson@gmail.com>
# $FreeBSD$

PORTNAME=	parsekit
PORTVERSION=	1.3.0
CATEGORIES=	devel
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	dereckson@gmail.com
COMMENT=	A opcodes runtime analysis PECL extension

LICENSE=	PHP301

USE_PHP=	yes
USE_PHP_BUILD=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	parsekit
DEFAULT_PHP_VER=54

CONFIGURE_ARGS=	--enable-parsekit
CFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
