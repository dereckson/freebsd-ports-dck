# $FreeBSD$

PORTNAME=	tclsoap
PORTVERSION=	1.6.7
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/TclSOAP-${PORTVERSION}
DISTNAME=	TclSOAP-${PORTVERSION}

MAINTAINER=	dereckson@gmail.com
COMMENT=	SOAP and XML-RPC support for TCL library

RUN_DEPENDS=	${LOCALBASE}/lib/TclxmlConfig.sh:${PORTSDIR}/devel/tclxml

WRKSRC=		${WRKDIR}/${PORTNAME}${PORTVERSION}

USE_AUTOTOOLS=	autoconf:autoconf

.include <bsd.port.mk>
