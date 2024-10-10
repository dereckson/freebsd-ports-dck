PORTNAME=	phpfpm_exporter_lusitaniae
PORTVERSION=	0.6.0
CATEGORIES=	net-mgmt

MAINTAINER=	dereckson@gmail.com
COMMENT=	Export php-fpm metrics in Prometheus format
WWW=		https://github.com/Lusitaniae/php-fpm_exporter

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules
USE_GITHUB=	yes
GH_ACCOUNT=	Lusitaniae
GH_PROJECT=	phpfpm_exporter
GH_TAGNAME=	v${PORTVERSION}
GH_TUPLE=	\
		alecthomas:kingpin:v2.2.6:alecthomas_kingpin/vendor/gopkg.in/alecthomas/kingpin.v2 \
		alecthomas:template:fb15b899a751:alecthomas_template/vendor/github.com/alecthomas/template \
		alecthomas:units:f65c72e2690d:alecthomas_units/vendor/github.com/alecthomas/units \
		beorn7:perks:v1.0.1:beorn7_perks/vendor/github.com/beorn7/perks \
		cespare:xxhash:v2.1.1:cespare_xxhash_v2/vendor/github.com/cespare/xxhash/v2 \
		golang:protobuf:v1.4.3:golang_protobuf/vendor/github.com/golang/protobuf \
		golang:sys:04245dca01da:golang_sys/vendor/golang.org/x/sys \
		matttproud:golang_protobuf_extensions:v1.0.1:matttproud_golang_protobuf_extensions/vendor/github.com/matttproud/golang_protobuf_extensions \
		prometheus:client_golang:v1.10.0:prometheus_client_golang/vendor/github.com/prometheus/client_golang \
		prometheus:client_model:v0.2.0:prometheus_client_model/vendor/github.com/prometheus/client_model \
		prometheus:common:v0.27.0:prometheus_common/vendor/github.com/prometheus/common \
		prometheus:procfs:v0.6.0:prometheus_procfs/vendor/github.com/prometheus/procfs \
		protocolbuffers:protobuf-go:v1.25.0:protocolbuffers_protobuf_go/vendor/google.golang.org/protobuf \
		tomasen:fcgi_client:2bb3d819fd19:tomasen_fcgi_client/vendor/github.com/tomasen/fcgi_client
GO_TARGET=	:phpfpm_exporter

CONFLICTS=	phpfpm_exporter

PLIST_FILES=	bin/phpfpm_exporter

.include <bsd.port.mk>
