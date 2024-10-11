PORTNAME=	alkane
PORTVERSION=	0.2.0
CATEGORIES=	sysutils

MAINTAINER=	dereckson@gmail.com
COMMENT=	Deploy a website on the Nasqueron PaaS Alkane
WWW=		https://agora.nasqueron.org/Operations_grimoire/Alkane

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	rust-nightly>0:lang/rust-nightly \
				${PREFIX}/share/public_suffix_list/public_suffix_list.dat:dns/public_suffix_list

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	nasqueron
GH_TAGNAME=	v${PORTVERSION}

CARGO_BUILDDEP=	no
CARGO_CRATES=	aead-0.3.2 \
		aes-0.6.0 \
		aes-gcm-0.8.0 \
		aes-soft-0.6.4 \
		aesni-0.10.0 \
		aho-corasick-1.1.3 \
		anstream-0.6.15 \
		anstyle-1.0.8 \
		anstyle-parse-0.2.5 \
		anstyle-query-1.1.1 \
		anstyle-wincon-3.0.4 \
		atty-0.2.14 \
		autocfg-1.4.0 \
		base64-0.9.3 \
		base64-0.13.1 \
		bitflags-1.3.2 \
		bitflags-2.6.0 \
		block-buffer-0.9.0 \
		byteorder-1.5.0 \
		cfg-if-0.1.10 \
		cfg-if-1.0.0 \
		cipher-0.2.5 \
		clap-4.5.20 \
		clap_builder-4.5.20 \
		clap_derive-4.5.18 \
		clap_lex-0.7.2 \
		colorchoice-1.0.2 \
		cookie-0.11.5 \
		cpufeatures-0.2.14 \
		cpuid-bool-0.2.0 \
		crypto-mac-0.10.1 \
		ctr-0.6.0 \
		devise-0.2.1 \
		devise_codegen-0.2.1 \
		devise_core-0.2.1 \
		digest-0.9.0 \
		dotenv-0.15.0 \
		env_filter-0.1.2 \
		env_logger-0.11.5 \
		equivalent-1.0.1 \
		filetime-0.2.25 \
		fsevent-0.4.0 \
		fsevent-sys-2.0.1 \
		fuchsia-zircon-0.3.3 \
		fuchsia-zircon-sys-0.3.3 \
		generic-array-0.14.7 \
		getrandom-0.2.15 \
		ghash-0.3.1 \
		glob-0.3.1 \
		hashbrown-0.12.3 \
		hashbrown-0.15.0 \
		heck-0.5.0 \
		hermit-abi-0.1.19 \
		hermit-abi-0.3.9 \
		hkdf-0.10.0 \
		hmac-0.10.1 \
		httparse-1.9.5 \
		humantime-2.1.0 \
		hyper-0.10.16 \
		idna-0.1.5 \
		indexmap-1.9.3 \
		indexmap-2.6.0 \
		inotify-0.7.1 \
		inotify-sys-0.1.5 \
		iovec-0.1.4 \
		is_terminal_polyfill-1.70.1 \
		itoa-1.0.11 \
		kernel32-sys-0.2.2 \
		language-tags-0.2.2 \
		lazy_static-1.5.0 \
		lazycell-1.3.0 \
		libc-0.2.159 \
		libredox-0.1.3 \
		limiting-factor-0.8.0 \
		log-0.3.9 \
		log-0.4.22 \
		matches-0.1.10 \
		memchr-2.7.4 \
		mime-0.2.6 \
		mio-0.6.23 \
		mio-extras-2.0.6 \
		miow-0.2.2 \
		net2-0.2.39 \
		notify-4.0.18 \
		num_cpus-1.16.0 \
		opaque-debug-0.3.1 \
		pear-0.1.5 \
		pear_codegen-0.1.5 \
		percent-encoding-1.0.1 \
		percent-encoding-2.3.1 \
		polyval-0.4.5 \
		ppv-lite86-0.2.20 \
		proc-macro2-0.4.30 \
		proc-macro2-1.0.87 \
		quote-0.6.13 \
		quote-1.0.37 \
		rand-0.8.5 \
		rand_chacha-0.3.1 \
		rand_core-0.6.4 \
		redox_syscall-0.5.7 \
		regex-1.11.0 \
		regex-automata-0.4.8 \
		regex-syntax-0.8.5 \
		rocket-0.4.11 \
		rocket_codegen-0.4.11 \
		rocket_contrib-0.4.11 \
		rocket_http-0.4.11 \
		ryu-1.0.18 \
		safemem-0.3.3 \
		same-file-1.0.6 \
		serde-1.0.210 \
		serde_derive-1.0.210 \
		serde_json-1.0.128 \
		serde_yaml-0.9.34+deprecated \
		sha2-0.9.9 \
		slab-0.4.9 \
		smallvec-1.13.2 \
		state-0.4.2 \
		strsim-0.11.1 \
		subtle-2.4.1 \
		syn-0.15.44 \
		syn-2.0.79 \
		time-0.1.45 \
		tinyvec-1.8.0 \
		tinyvec_macros-0.1.1 \
		toml-0.4.10 \
		traitobject-0.1.0 \
		typeable-0.1.2 \
		typenum-1.17.0 \
		unicase-1.4.2 \
		unicode-bidi-0.3.17 \
		unicode-ident-1.0.13 \
		unicode-normalization-0.1.24 \
		unicode-xid-0.1.0 \
		universal-hash-0.4.1 \
		unsafe-libyaml-0.2.11 \
		url-1.7.2 \
		utf8parse-0.2.2 \
		version_check-0.1.5 \
		version_check-0.9.5 \
		walkdir-2.5.0 \
		wasi-0.10.0+wasi-snapshot-preview1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		winapi-0.2.8 \
		winapi-0.3.9 \
		winapi-build-0.1.1 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.9 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		windows-sys-0.52.0 \
		windows-sys-0.59.0 \
		windows-targets-0.52.6 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_msvc-0.52.6 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_msvc-0.52.6 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_msvc-0.52.6 \
		ws2_32-sys-0.2.1 \
		yansi-0.5.1 \
		zerocopy-0.7.35 \
		zerocopy-derive-0.7.35

PLIST_FILES=	bin/alkane etc/rc.d/alkane

pre-build:
	${MKDIR} ${WRKSRC}/src/data
	${CP} ${PREFIX}/share/public_suffix_list/public_suffix_list.dat ${WRKSRC}/src/data/public_suffix_list.dat

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/support/freebsd/rc.d/alkane ${STAGEDIR}${PREFIX}/etc/rc.d

.include <bsd.port.mk>
