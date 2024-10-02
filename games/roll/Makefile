PORTNAME=	roll
PORTVERSION=	2.6.1
CATEGORIES=	games

MAINTAINER=	dereckson@gmail.com
COMMENT=	Roll dices using dice expressions
WWW=	https://matteocorti.github.io/roll/

LICENSE=	GPLv2

USES=	autoreconf
GNU_CONFIGURE=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	matteocorti
GH_TAGNAME=	v${PORTVERSION}

INSTALL_TARGET=install-strip

PLIST_FILES=	bin/roll \
	share/bash-completion/completions/roll \
	share/man/man1/roll.1.gz

.include <bsd.port.mk>
